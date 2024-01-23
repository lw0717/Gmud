class_name Player
extends CharacterBody2D


const SPEED = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _physics_process(delta):

    # Get the input direction and handle the movement/deceleration.
    # As good practice, you should replace UI actions with custom gameplay actions.
    var direction = Input.get_axis("move_left", "move_right")
    if direction:
        velocity.x = direction * SPEED
        animation_player.play("move_left" if velocity.x < 0 else "move_right")
    else:
        velocity.x = move_toward(velocity.x, 0, SPEED)

    direction = Input.get_axis("move_up", "move_down")
    if direction:
        velocity.y = direction * SPEED
        animation_player.play("move_up" if velocity.y < 0 else "move_down")
    else:
        velocity.y = move_toward(velocity.y, 0, SPEED)

    if velocity.x == 0 and velocity.y == 0:
        animation_player.stop()

    move_and_slide()
