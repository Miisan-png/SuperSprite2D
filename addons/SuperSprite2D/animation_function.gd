@tool
extends Resource
class_name AnimationFunction

enum TargetType { PARENT, SELF, SCENE }
enum TriggerType { DURING_ANIMATION, AFTER_ANIMATION }

@export var animation_name: String = ""
@export var frame: int = -1  
@export var function_name: String = ""
@export var arguments: Array = []
@export var target_type: TargetType = TargetType.PARENT
@export var trigger_type: TriggerType = TriggerType.DURING_ANIMATION
@export var loop: bool = false
@export var loop_interval: int = 1
