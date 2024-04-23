extends Node2D

# Constants for hexagon size and spacing
const HEX_SIZE = 50
const HEX_SPACING = 3

func _ready():
	generateHexGrid()

func generateHexGrid():
	for row in range(8):
		for col in range(8):
			var hexagon = Hexagon.new()
			hexagon.position = hexToPixel(col, row)
			add_child(hexagon)
