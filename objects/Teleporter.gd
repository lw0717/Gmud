class_name Teleporter
extends Interactable

@export_file("*.tscn") var path: String
@export var entry_point: String


func _init() -> void:
    body_entered.connect(_on_body_entered)
    body_exited.connect(_on_body_exited)
    pass


func _on_body_entered(player: Player) -> void:
    print("[Entered] %s" % name)
    pass


func _on_body_exited(player: Player) -> void:
    print("[Exited] %s" % name)
    pass
