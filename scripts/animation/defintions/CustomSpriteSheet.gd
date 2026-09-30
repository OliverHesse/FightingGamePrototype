class_name CustomSprite
#a definiton for a sprite, will be used to generate Sprite2D


var spriteSheet:Texture2D
var hFrames: int
var vFrames: int

func _init(spriteSheet:Texture2D,hFrames:int,vFrames:int) -> void:
	self.spriteSheet = spriteSheet
	self.hFrames = hFrames
	self.vFrames = vFrames
