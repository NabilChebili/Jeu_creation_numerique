extends RichTextLabel

var dialog = ["Bonjour !\nBienvenue dans le jeu !\nAurais-tu trouvé un os en chemin ?\nJe l'ai perdu en me faisant attaquer par une horde de chats...",
			"Si tu trouves mon os, je t'offrirai une récompense ! Alors bouge-toi et vas chercher mon os !!"]
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
				set_visible_characters(get_total_character_count())
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
