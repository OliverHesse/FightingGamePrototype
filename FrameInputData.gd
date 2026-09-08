extends Node
class_name FrameInputData
var input: Vector2i = Vector2i.ZERO
var frames = 0

static func create(input:Vector2i)->FrameInputData:
	var data = FrameInputData.new()
	data.frames = 0
	data.input = input
	return data

func processFrame(input:Vector2i) ->FrameInputData:
	if input == self.input:
		frames += 1
		return null
	return FrameInputData.create(input)
