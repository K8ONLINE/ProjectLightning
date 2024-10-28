#Player.gd 
extends CharacterBody3D  

func _input(event):     

	#If the event received is mouse movement, then it also carries said movement
	if event is InputEventMouseMotion:      

		#Rotate the camera by the movement of the event, in the Y (Vector3.UP) axis.
		$Camera3D.rotate(Vector3.UP, event.relative)  

	#This action comes with all projects and is mapped to the up arrow by default.
	elif event.is_action_pressed("foward"):  
			  
		#Move forward, with forward being rotated to the camera's orientation
		position += Vector3.FORWARD.rotated(Vector3.UP, $Camera3D.rotation)
