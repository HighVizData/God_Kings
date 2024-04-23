extends Node2D

# Constants
const HEX_SIZE = 50
const HEX_SPACING = 3
const GRID_ROWS = 8
const GRID_COLS = 8

func _ready():
	generateHexGrid()

func generateHexGrid():
	for row in range(GRID_ROWS):
		for col in range(GRID_COLS):
			var hexagon = Hexagon.new()
			hexagon.position = hexToPixel(col, row)
			add_child(hexagon)

func hexToPixel(col, row):
	var x = HEX_SIZE * sqrt(3) * (col + 0.5 * (row & 1))
	var y = HEX_SIZE * 1.5 * row
	return Vector2(x, y)
