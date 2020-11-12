extends Control


# Declare member variables here. Examples:
var health = 6
var temperature = 0
var health_file = "res://images/health/health_0.png"
var thermometer_file = "res://images/thermometer/thermometer_00.png"


# Called when the node enters the scene tree for the first time.
func _ready():
	update_health()
	update_thermometer()


## HEALTH

func reset_health():
	health = 6
	update_health()

func decrease_health():
	health-=1
	update_health()
	if health == 0:
		health = 6

func update_health():
	health_file = "res://images/health/health_" + str(6-health) + ".png"
	get_node("CanvasLayer").get_node("health").set_texture(load(health_file))


## TEMPERATURE

func increase_temperature():
	temperature+=1

func update_thermometer():
	thermometer_file = "res://images/thermometer/thermometer_0" + str(temperature) + ".png"
	get_node("CanvasLayer").get_node("thermometer").set_texture(load(thermometer_file))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
