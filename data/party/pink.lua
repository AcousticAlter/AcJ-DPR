local character, super = Class(PartyMember, "pink")

function character:init()
    super.init(self)

    self.name = "Pink"

    self:setActor("pink")
    self:setDarkTransitionActor("susie_dark_transition") -- Placeholder

    self.love = 1
    self.level = self.love
    self.title = "Magical Girl\nLeads in battle\nusing many ACTs."

    self.soul_priority = 2
    self.soul_color = {1, 0.5, 0.5}
    self.soul_facing = "down"

    self.has_act = false
    self.has_spells = true
    self.has_xact = true
    self.xact_name = "P-Action"

    self.health = 140

    self.stats = {
        health = 140,
        attack = 6,
        defense = 0,
        magic = 6
    }
    self.max_stats = {}

    self.weapon_icon = "ui/menu/equip/staff"

    self:setWeapon("mew_staff")

    self.lw_weapon_default = "light/pencil"
    self.lw_armor_default = "light/bandage"
    self.lw_portrait = "face/hero/neutral_closed"

    self.color = {230/255, 36/255, 123/255}
    self.dmg_color = {1, 0.5, 0.25}
    self.attack_bar_color = {230/255, 30/255, 130/255}
    self.attack_box_color = {127/255, 58/255, 59/255}
    self.xact_color = {1, 0.5, 0.5}
	-- highlight color A
    self.highlight_color = ColorUtils.hexToRGB("#FF7F27FF")
		-- highlight color B
    self.highlight_color_alt = COLORS.orange

    self.icon_color = {252/255, 98/255, 166/255}

    self.menu_icon = "party/pink/head"
    self.head_icons = "party/pink/icon"
    self.name_sprite = "party/pink/name"

    self.attack_sprite = "effects/attack/cut_h"
    self.attack_sound = "laz_c"
    self.attack_pitch = 1

    self.battle_offset = {2, 1}
    self.head_icon_offset = {0, 0}
    self.menu_icon_offset = {0, 0}

    self.gameover_message = nil

    self.flags = {
    }

    self.tv_name = "PNK"

    self.can_lead = true

    self.element = {
        "CAT"
    }
end

function character:onLevelUp(level)
    self:increaseStat("health", 2)
    if level % 10 == 0 then
        self:increaseStat("attack", 1)
    end
end

function character:onLevelUpLVLib(level)
    self:increaseStat("health", 5)
    self:increaseStat("defense", 1)
    if level % 2 == 0 then
        self:increaseStat("attack", 1)
    end
end

function character:drawPowerStat(index, x, y, menu)
    if index == 1 then
        local icon = Assets.getTexture("ui/menu/icon/exclamation")
        Draw.draw(icon, x-26, y+6, 0, 2, 2)
        love.graphics.print("Chosen One:", x, y, 0, 0.8, 1)
        love.graphics.print("Yes", x+130, y)
        return true
    elseif index == 2 then
        local icon = Assets.getTexture("ui/menu/icon/demon")
        Draw.draw(icon, x-26, y+6, 0, 2, 2)
        love.graphics.print("Karma:", x, y)
        love.graphics.print("MAX", x+130, y)
        return true
    elseif index == 3 then
        local icon = Assets.getTexture("ui/menu/icon/fire")
        Draw.draw(icon, x-26, y+6, 0, 2, 2)
        love.graphics.print("Guts:", x, y)

        Draw.draw(icon, x+90, y+6, 0, 2, 2)
        Draw.draw(icon, x+110, y+6, 0, 2, 2)
        Draw.draw(icon, x+130, y+6, 0, 2, 2)
        return true
    end
end

return character
