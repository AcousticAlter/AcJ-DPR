local item, super = Class(Item, "spikeshackle")

function item:init()
    super.init(self)

    -- Display name
    self.name = "SpikeShackle"

    -- Item type (item, key, weapon, armor)
    self.type = "armor"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/armor"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = ""

    -- Default shop price (sell price is halved)
    self.price = 300
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
        attack = 3,
        defense = 1,
    }
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = "Attack"
    self.bonus_icon = "ui/menu/icon/up"

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {}

    -- Character reactions
    self.reactions = {
        susie = "Get a load of THIS!",
        ralsei = "Looking SHARP!",
        noelle = "(It's tearing my sleeves...)",
        dess = "ermmm unused item much?",
        jamm = "Seems like a torture device.",
        noel = "Good job using debug cheater.",
        ceroba = "Hopefully it won't tear my clothes...",
    }
end

return item