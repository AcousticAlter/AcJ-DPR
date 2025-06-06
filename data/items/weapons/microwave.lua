local item, super = Class(Item, "microwave")

function item:init()
    super.init(self)

    -- Display name
    self.name = "Microwave"

    -- Item type (item, key, weapon, armor)
    self.type = "weapon"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/microwave"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "Might cause a terminal illness idk?"

    -- Default shop price (sell price is halved)
    self.price = 0
    -- Whether the item can be sold
    self.can_sell = false

    -- Consumable target mode (ally, party, enemy, enemies, or none)
    self.target = "none"
    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "all"
    -- Item this item will get turned into when consumed
    self.result_item = nil
    -- Will this item be instantly consumed in battles?
    self.instant = false

    -- Equip bonuses (for weapons and armor)
    self.bonuses = {
        attack = 14,
        magic  = 12,
    }
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = "Trance"
    self.bonus_icon = "ui/menu/icon/microwave"

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {
        noelle = true,
    }

    -- Character reactions
    self.reactions = {
        iphone = "...",
        noel = [[Do you want me to make "HOT POCKET"s?]],
		dess = "another unused thing i think smh",
		jamm = "I mean, am I supposed to throw it, or...?",
        ceroba = "You CANNOT be serious right now."
    }
end

function item:onBattleUpdate(battler)
    battler.thorn_ring_timer = (battler.thorn_ring_timer or 0) + DTMULT

    if battler.thorn_ring_timer >= 6 then
        battler.thorn_ring_timer = battler.thorn_ring_timer - 6

        if battler.chara:getHealth() > Utils.round(battler.chara:getStat("health") / 3) then
            battler.chara:setHealth(battler.chara:getHealth() - 1)
        end
    end
end

return item