extends Label


func _on_character_state_changed(stateMachine: SimpleStateMachine) -> void:
	print("reading")
	self.text = stateMachine.activeState.getName()
	scale.x = get_parent().scale.x
