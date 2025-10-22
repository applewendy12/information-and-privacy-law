extends Node3D

var sensitivity = 0.2

func _input(event: InputEvent) -> void:
    if event is InputEventMouseMotion:
        #depending on how our mouse is moving, the player will be rotated left or right
        get_parent().rotate_y(deg_to_rad(-event.relative.x * sensitivity))
        #rotates the player's head up and down
        rotate_x(deg_to_rad(-event.relative.y * sensitivity))
        rotation.x = clamp(rotation.x, deg_to_rad(-90), deg_to_rad(90))
