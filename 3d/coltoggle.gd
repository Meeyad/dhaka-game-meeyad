extends MeshInstance
export(Color) var new_color = Color(0, 1, 0)
export(Color) var old_color = Color(1, 0, 0)
var xd = 0

func _physics_process(delta):

	print (xd)

	if Input.is_action_pressed("coltoggle"):
		xd = 1
		
	if Input.is_action_just_released("coltoggle"):
		xd = 0

	if xd == 1:
		get_surface_material(0).albedo_color = new_color
		set_process(true)

	if xd == 0:
		get_surface_material(0).albedo_color = old_color
		set_process(true)
