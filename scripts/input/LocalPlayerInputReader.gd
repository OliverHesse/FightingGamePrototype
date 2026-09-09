extends InputReader
class_name LocalPlayerInputReader

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


func processFrame() -> void:
	inputBuffer.update(getInput())
