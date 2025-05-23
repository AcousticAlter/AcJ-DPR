local item, super = Class(Item, "hair_ribbon")

function item:init()
    super.init(self)

    -- Display name
    self.name = "Hair Ribbon"

    -- Item type (item, key, weapon, armor)
    self.type = "armor"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/armor"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "Big sized beige rope ribbon with a white bell.\nIncreases tension gained by 20%."

    -- Default shop price (sell price is halved)
    self.price = 400
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
        defense = 5,

        graze_tp = 0.2,
    }
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = "TPGain"
    self.bonus_icon = "ui/menu/icon/up"

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {
        susie = false,
		jamm = false,
    }

    -- Character reactions
    self.reactions = {
        susie = "Another one?!",
        ralsei = "Do I look good?",
        noelle = "It's pretty...",
		dess = "yet another ribbion dialogue",
        ceroba = "Back to it's rightful place.",
        noel = "I'll tie it to my umbrella.",
		jamm = "I don't know how I'd make it work.",
        ["jamm+marcy"] = "It's way too big for you, Marcy!"
    }
end

function item:convertToLightEquip(chara)
    return "light/big_ribbon"
end

return item