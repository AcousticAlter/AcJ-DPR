local item, super = Class(Item, "bounceblade")

function item:init()
    super.init(self)

    -- Display name
    self.name = "BounceBlade"

    -- Item type (item, key, weapon, armor)
    self.type = "weapon"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/sword"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "A pink saber with a rubber blade.\nWeak, but increases defence."

    -- Default shop price (sell price is halved)
    self.price = 250
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
        attack  = 2,
        defense = 1,
    }
    -- Bonus name and icon (displayed in equip menu)
    self.bonus_name = "Defense"
    self.bonus_icon = "ui/menu/icon/up"

    -- Equippable characters (default true for armors, false for weapons)
    self.can_equip = {
        kris = true,
    }

    -- Character reactions
    self.reactions = {
        susie = "What is this, rubber?",
        ralsei = "Soft and squishy!",
        noelle = "S-stop thwacking me!",
		dess = "im gonna poke holes in it",
        jamm = "So is this like... a practice sword?",
        ceroba = "Isn't it gonna bounce off the enemies?",
        noel = "Repulsing...",
    }
end

function item:convertToLightEquip(chara)
    return "light/eraser"
end

return item