class_name Player
extends KinematicBody2D

const gravity = 8.1
const speed = 50
const jump_force = -240

var velocity = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -speed
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("walk")
	elif Input.is_action_pressed("right"):
		velocity.x = speed
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("walk")
	else:
		velocity.x = 0
		$AnimatedSprite.play("idle")
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_force

	velocity.y += gravity
	velocity = move_and_slide(velocity, Vector2.UP)
