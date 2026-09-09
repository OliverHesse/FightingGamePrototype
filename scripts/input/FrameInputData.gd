extends Node
class_name FrameInputData
var input: Vector2i = Vector2i.ZERO
var frames = 1
var inputAscii = {
	Vector2i(0,0) : "N" ,
	Vector2i(0,-1): "↓",
	Vector2i(0,1) : " ↑",
	Vector2i(1,0): "→",
	Vector2i(-1,0):"←",
	Vector2i(1,1): "↗",
	Vector2i(1,-1) :"↘",
	Vector2i(-1,-1):"↙",
	Vector2i(-1,1):"↖"
}
static func create(input:Vector2i)->FrameInputData:
	var data = FrameInputData.new()
	data.input = input
	return data
func _to_string() -> String:
	return "%s (%s)" % [inputAscii.get(input),frames]
func processFrame(input:Vector2i) ->FrameInputData:
	if input == self.input:
		frames += 1
		return null
	return FrameInputData.create(input)
