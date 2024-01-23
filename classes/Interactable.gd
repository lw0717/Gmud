class_name Interactable
extends Area2D

signal interacted


func interact() -> void:
    print("[Interact] %s" % name)
    interacted.emit()
