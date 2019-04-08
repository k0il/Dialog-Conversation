extends Node

var mydialog = ["hallo world, this is godot game engine","lorem ipsum dolor sit amet consectetur adispiscing elit"]
var dialogpage = 0
onready var RichText = get_node("Polygon2D/RichTextLabel")

func _ready():
	RichText.set_bbcode(mydialog[dialogpage])
	RichText.set_visible_characters(0)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass



func _on_Area2D_input_event(viewport, event, shape_idx):
	
	if event is InputEventMouseButton :
		if event.is_pressed() :
			if RichText.get_visible_characters() > RichText.get_total_character_count() :
				if dialogpage < mydialog.size()-1:
					dialogpage +=1
					RichText.set_bbcode(mydialog[dialogpage])
					RichText.set_visible_characters(0)
			else :
				RichText.set_visible_characters(RichText.get_total_character_count())
	
	pass # replace with function body


func _on_Timer_timeout():
	RichText.set_visible_characters(RichText.get_visible_characters()+1)
	
	pass # replace with function body
