class_name Objects
extends Interactable

@export var object_id: int


func _init() -> void:
    body_entered.connect(_on_body_entered)
    body_exited.connect(_on_body_exited)
    pass


func _on_body_entered(player: Player) -> void:
    print("[Entered] %s, %s" % [name, object_id])
    pass


func _on_body_exited(player: Player) -> void:
    print("[Exited] %s, %s" % [name, object_id])
    pass
