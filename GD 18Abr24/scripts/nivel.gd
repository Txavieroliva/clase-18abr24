extends Node2D

var contador = 0

func _ready():
	for item in $Items.get_children():
		item.connect("item_recolectado", aumentar_contador)


func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().call_group("items", "eliminar_item")

func aumentar_contador():
	contador += 1
	$Label.text = "Contador: " + str(contador)
