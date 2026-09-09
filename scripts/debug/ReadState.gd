extends Label




func _on_test_player_scene_state_changed(stateMachine: StateMachine) -> void:
	self.text = stateMachine.activeState.getName()
