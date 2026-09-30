extends AnimationTrack


class TrackFrame:
	var x:int
	var y:int
	var frameX:int
	var frameY:int
	func _init(x:int,y:int,frameX:int,frameY:int) -> void:
		self.x = x
		self.y = y
		self.frameX = frameX
		self.frameY = frameY
var sprite:Sprite2D
var frames :Dictionary
var loop:bool
var endFrame:int

#true->animation still playing false->animation finished
func playFrame(frame:int)->bool:
	if(not loop and frame > endFrame):
		return false
	var localFrame = frame%(endFrame+1)
	if frames.has(localFrame):
		var frameData = frames.get(localFrame)
		sprite.position.x = frameData.x
		sprite.position.y = frameData.y
		sprite.frame_coords = Vector2i(frameData.frameX,frameData.frameY)
	return true
