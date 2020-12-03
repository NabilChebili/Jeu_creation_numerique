extends RichTextLabel

var dialog = [" Bonjour !\n Bienvenue dans la démo de notre jeu Green Life Adventure !\n J'ai besoin de ton aide jeune homme !\n Des voyageurs qui sont partis vers la ville ont laissé des déchets sur le sol, tu dois m'aider à les ramasser !",
			"C'est d'une importance cruciale car le vent va très vite les transporter dans la rivière !\n J'ai aussi perdu mon os, si tu le trouves je t'offrirai une récompense !\n Alors allons vite rammasser ces déchets !"]
var page = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)


func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_T: 
			if get_visible_characters() > get_total_character_count():
				if page < dialog.size()-1:
					page += 1
					set_bbcode(dialog[page])
					set_visible_characters(0)
				else:
					get_parent().set_visible(false)
			else:
				set_visible_characters(get_total_character_count())




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
