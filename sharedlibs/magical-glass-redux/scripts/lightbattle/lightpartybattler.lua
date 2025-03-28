local LightPartyBattler, super = Class()

function LightPartyBattler:init(chara)
    self.chara = chara

    self.action = nil

    self.defending = false

    self.is_down = false
    self.sleeping = false

    self.targeted = false
    
    self.has_save = false
    self.manual_spare = false
    
    -- Karma (KR) calculations
    self.karma = 0
    self.karma_timer = 0
    self.karma_bonus = 0
    self.prev_health = 0
    self.inv_bonus = 0
end

function LightPartyBattler:canTarget()
    return (not self.is_down)
end

function LightPartyBattler:calculateDamage(amount)
    local def = self.chara:getStat("defense")
    local max_hp = self.chara:getStat("health")
    local hp = self.chara:getHealth()
    
    if Game:isLight() then
        local bonus = MagicalGlassLib.bonus_damage ~= false and hp > 20 and math.min(1 + math.floor((hp - 20) / 10), 8) or 0
        amount = Utils.round(amount / 5 + bonus - def / 5)
    else
        local threshold_a = (max_hp / 5)
        local threshold_b = (max_hp / 8)
        for i = 1, def do
            if amount > threshold_a then
                amount = amount - 3
            elseif amount > threshold_b then
                amount = amount - 2
            else
                amount = amount - 1
            end
            if amount <= 0 or def == math.huge then
                amount = 0
                break
            end
        end
    end

    return math.max(amount, 1)
end

function LightPartyBattler:calculateDamageSimple(amount)
    return math.ceil(amount - (self.chara:getStat("defense")))
end

function LightPartyBattler:getElementReduction(element)
    -- TODO: this

    if (element == 0) then return 1 end

    local armor_elements = {
        {element = 0, element_reduce_amount = 0},
        {element = 0, element_reduce_amount = 0}
    }

    local reduction = 1
    for i = 1, 2 do
        local item = armor_elements[i]
        if (item.element ~= 0) then
            if (item.element == element)                              then reduction = reduction - item.element_reduce_amount end
            if (item.element == 9 and (element == 2 or element == 8)) then reduction = reduction - item.element_reduce_amount end
            if (item.element == 10)                                   then reduction = reduction - item.element_reduce_amount end
        end
    end
    return math.max(0.25, reduction)
end

function LightPartyBattler:hurt(amount, exact, color, options)
    options = options or {}
    
    self:setSleeping(false)
    Game.battle:shakeCamera(2, 2, 0.35)

    if not options["all"] then
        Assets.playSound("hurt")
        if not exact then
            amount = self:calculateDamage(amount)
            if self.defending then
                amount = math.ceil((2 * amount) / 3)
            end
            local element = 0
            amount = math.ceil((amount * self:getElementReduction(element)))
        end

        self:removeHealth(amount)
    else
        if not exact then
            amount = self:calculateDamage(amount)
            local element = 0
            amount = math.ceil((amount * self:getElementReduction(element)))

            if self.defending then
                amount = math.ceil((3 * amount) / 4)
            end
        end
        
        self:removeHealthBroken(amount)
    end
end

function LightPartyBattler:removeHealth(amount)
    if (self.chara:getHealth() <= 0) then
        amount = Utils.round(amount / 4)
        self.chara:setHealth(self.chara:getHealth() - amount)
    else
        self.chara:setHealth(self.chara:getHealth() - amount)
        if (self.chara:getHealth() <= 0) then
            if not Game.battle.multi_mode then
                self.chara:setHealth(0)
            else
                amount = math.abs((self.chara:getHealth() - (self.chara:getStat("health") / 2)))
                self.chara:setHealth(Utils.round(((-self.chara:getStat("health")) / 2)))
            end
        end
    end
    self:checkHealth()
end

function LightPartyBattler:removeHealthBroken(amount)
    self.chara:setHealth(self.chara:getHealth() - amount)
    if (self.chara:getHealth() <= 0) then
        if not Game.battle.multi_mode then
            self.chara:setHealth(0)
        else
            -- BUG: Use Kris' max health...
            self.chara:setHealth(Utils.round(((-Game.party[1]:getStat("health")) / 2)))
        end
    end
    self:checkHealth()
end

function LightPartyBattler:down()
    self.is_down = true
    self.sleeping = false
    if self.action then
        Game.battle:removeAction(Game.battle:getPartyIndex(self.chara.id))
    end
    Game.battle:checkGameOver()
end

function LightPartyBattler:setSleeping(sleeping)
    if self.sleeping == (sleeping or false) then return end

    if sleeping then
        if self.is_down then return end
        self.sleeping = true
        if self.action then
            Game.battle:removeAction(Game.battle:getPartyIndex(self.chara.id))
        end
    else
        self.sleeping = false
    end
end

function LightPartyBattler:revive()
    self.is_down = false
end

function LightPartyBattler:heal(amount, playsound)
    MagicalGlassLib.heal_amount = amount

    if playsound ~= false then
        Assets.stopAndPlaySound("power")
    end

    if self.chara:getHealth() < self.chara:getStat("health") then
        self.chara:setHealth(math.min(self.chara:getStat("health"), self.chara:getHealth() + amount))
    end
    
    self:checkHealth()
end

function LightPartyBattler:checkHealth()
    if (not self.is_down) and self.chara:getHealth() <= 0 then
        self:down()
    elseif (self.is_down) and self.chara:getHealth() > 0 then
        self:revive()
    end
end

function LightPartyBattler:isActive()
    return not self.is_down and not self.sleeping
end

function LightPartyBattler:isTargeted()
    return self.targeted
end

function LightPartyBattler:addKarma(amount)
    self.karma = self.karma + amount
end

function LightPartyBattler:toggleSaveButton(value)
    self.has_save = value and true or false
    for _,action_box in ipairs(Game.battle.battle_ui.action_boxes) do
        if action_box.battler == self then
            for _,button in ipairs(action_box.buttons or {}) do
                if button.type == "act" then
                    button.rainbow = value and true or false
                    if value then
                        button.tex = Assets.getTexture("ui/lightbattle/btn/save")
                        button.hover_tex = Assets.getTexture("ui/lightbattle/btn/save_h")
                    else
                        button.tex = button.tex_og
                        button.hover_tex = button.hover_tex_og
                    end
                    button:setColor(1, 1, 1, 1)
                end
            end
            break
        end
    end
end

function LightPartyBattler:update()
    if self.chara:getWeapon() then
        self.chara:getWeapon():onBattleUpdate(self)
    end
    for i = 1, 2 do
        if self.chara:getArmor(i) then
            self.chara:getArmor(i):onBattleUpdate(self)
        end
    end
    
    -- Karma (KR) calculations
    self.karma = Utils.clamp(self.karma, 0, 40)
    if self.karma >= self.chara:getHealth() and self.chara:getHealth() > 0 then
        self.karma = self.chara:getHealth() - 1
    end
    if self.karma > 0 and self.chara:getHealth() > 1 then
        self.karma_timer = self.karma_timer + DTMULT
        if self.prev_health == self.chara:getHealth() then
            self.karma_bonus = 0
            self.inv_bonus = 0
            for _,equip in ipairs(self.chara:getEquipment()) do
                if equip.getInvBonus then
                    self.inv_bonus = self.inv_bonus + equip:getInvBonus()
                end
            end
            if self.inv_bonus >= 15/30 then
                self.karma_bonus = Utils.pick({0,1})
            end
            if self.inv_bonus >= 30/30 then
                self.karma_bonus = Utils.pick({0,1,1})
            end
            if self.inv_bonus >= 45/30 then
                self.karma_bonus = 1
            end
            
            local function hurtKarma()
                self.karma_timer = 0
                self.chara:setHealth(self.chara:getHealth() - 1)
                self.karma = self.karma - 1
            end
            
            if self.karma_timer >= (1 + self.karma_bonus) and self.karma >= 40 then
                hurtKarma()
            end
            if self.karma_timer >= (2 + self.karma_bonus * 2) and self.karma >= 30 then
                hurtKarma()
            end
            if self.karma_timer >= (5 + self.karma_bonus * 3) and self.karma >= 20 then
                hurtKarma()
            end
            if self.karma_timer >= (15 + self.karma_bonus * 5) and self.karma >= 10 then
                hurtKarma()
            end
            if self.karma_timer >= (30 + self.karma_bonus * 10) then
                hurtKarma()
            end
            if self.chara:getHealth() <= 0 then
                self.chara:setHealth(1)
            end
        end
        self.prev_health = self.chara:getHealth()
    end
end

return LightPartyBattler