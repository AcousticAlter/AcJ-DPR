local item, super = Class(Item, "snowring")

function item:init()
    super.init(self)

    -- Display name
    self.name = "SnowRing"

    -- Item type (item, key, weapon, armor)
    self.type = "weapon"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/ring"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "A ring with the emblem of the\nsnowflake"

    -- Default shop price (sell price is halved)
    self.price = 100
    -- Whether the item can be sold
    self.can_sell = true

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
        attack = 0,
    }
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = nil
    self.bonus_icon = nil

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {
        noelle = true,
    }

    -- Character reactions
    self.reactions = {
        susie = "Smells like Noelle",
        ralsei = "Are you... proposing?",
        noelle = "(Thank goodness...)",
        jamm = "It's pretty cold, huh...",
		dess = "snowgrave route heheheheh",
        ceroba = {
            ceroba = "I'm a widow, but not free to take.",
            brenda = "There goes MY plans for tonight...",
            jamm = "Preach, Ceroba. You got this."
        }
    }
end

return item