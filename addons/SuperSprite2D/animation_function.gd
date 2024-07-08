# animation_function.gd
@tool
extends Resource
class_name AnimationFunction

enum TargetType { PARENT, SELF, SCENE }

@export var animation_name: String = ""
@export var frame: int = 0
@export var function_name: String = ""
@export var arguments: Array = []
@export var target_type: TargetType = TargetType.PARENT
@export var loop: bool = false
@export var loop_interval: int = 1
