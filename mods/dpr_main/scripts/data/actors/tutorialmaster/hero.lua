---@class Actor.tutorialmaster.bepis : Actor
local actor, super = Class(Actor)

function actor:init()
    super.init(self)
    self.path = "npcs/tutorialmasters"
    self.hitbox = {0,15,34,20}
    self.width = 34
    self.height = 34
end

function actor:createSprite()
    return TutorialMasterSprite(self, "hero")
end

return actor
