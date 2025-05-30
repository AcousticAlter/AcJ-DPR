-- Instead of Item, create a HealItem, a convenient class for consumable healing items
local item, super = Class(HealItem, "apple")

function item:init()
    super.init(self)

    -- Display name
    self.name = "HalfApple"
    -- Name displayed when used in battle (optional)
    self.use_name = "HALF APPLE"

    -- Item type (item, key, weapon, armor)
    self.type = "item"
    -- Item icon (for equipment)
    self.icon = nil

    -- Battle description
    self.effect = "Heals\n60 HP"
    -- Shop description
    self.shop = nil
    -- Menu description
    self.description = "A half-eaten apple. +60 HP"

    -- Amount healed (HealItem variable)
    self.heal_amount = 60

    -- Default shop price (sell price is halved)
    self.price = 100
    -- Whether the item can be sold
    self.can_sell = true

    -- Consumable target mode (ally, party, enemy, enemies, or none)
    self.target = "ally"
    -- Where this item can be used (world, battle, all, or none)
    self.usable_in = "all"
    -- Item this item will get turned into when consumed
    self.result_item = "apple_core"
    -- Will this item be instantly consumed in battles?
    self.instant = false

    -- Equip bonuses (for weapons and armor)
    self.bonuses = {}
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = nil
    self.bonus_icon = nil

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {}

    -- Character reactions (key = party member id)
    self.reactions = {
        susie = "An apple a day keeps the doctor away.",
        ralsei = "It's really sweet!",
        noelle = "It's really crunchy!",
		dess = "sweet",
        brenda = "I love apples!",
		jamm = "A doctor a day keeps the apple away. Wait...",
        ["jamm+marcy"] = "It's good for you, Marcy!",
		noel = "Nom!",
        ceroba = "Not a fan of sweet stuff, but it's good.",
    }
end

return item
