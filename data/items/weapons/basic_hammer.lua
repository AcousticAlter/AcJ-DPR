local item, super = Class(Item, "basic_hammer")

function item:init()
    super.init(self)

    -- Display name
    self.name = "Basic Hammer"

    -- Item type (item, key, weapon, armor)
    self.type = "weapon"
    -- Item icon (for equipment)
    self.icon = "ui/menu/icon/hammer"

    -- Battle description
    self.effect = ""
    -- Shop description
    self.shop = ""
    -- Menu description
    self.description = "A hammer made of wood. It's pretty weak."

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
        mario = true,
        suzy = true,
    }

    -- Character reactions
    self.reactions = {
        mario = "Ooh, a mallet!",
        noel = "Glorified stick...",
		dess = "this shit aint lucky",
        ceroba = "What is this, a toy?",
        suzy = "Let's a GO!",
    }
end

function item:convertToLightEquip(inventory)
    return "light/old_mallet"
end

return item
