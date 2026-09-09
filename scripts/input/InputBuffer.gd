extends Node
class_name InputBuffer
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

var buffer : Array[FrameInputData] = [FrameInputData.new()]
# Called when the node enters the scene tree for the first time.
func getLastInputDirection() -> Vector2i:
	return buffer[buffer.size()-1].input
func getInput() -> Vector2i:
	var x :int = 0
	var y :int = 0
	# for better branching will be simplified to a 3 branch if
	if Input.is_action_pressed("Left") :
		x -= 1
	if Input.is_action_pressed("Right"):
		x += 1
	if Input.is_action_pressed("Down") :
		y -= 1
	if Input.is_action_pressed("Up"):
		y += 1
	return Vector2i(x,y)
func update():
	var input = getInput()
	var lastFrameData = buffer[buffer.size()-1]
	var frameData = lastFrameData.processFrame(input)
	if frameData != null :
		print("%s (%s)" % [inputAscii.get(lastFrameData.input),lastFrameData.frames])
		buffer.append(frameData)
