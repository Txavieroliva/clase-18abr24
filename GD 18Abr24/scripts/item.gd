extends Node2D

@export var nombre = ""
signal item_recolectado

func eliminar_item():
	print("item eliminado " + nombre)
	queue_free()

func _on_area_2d_area_entered(area):
	print("hola")
	emit_signal("item_recolectado")
