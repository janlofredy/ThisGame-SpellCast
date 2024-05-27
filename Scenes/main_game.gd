extends Node2D
# Called when the node enters the scene tree for the first time.
func _ready():
	var incantation1 = spell.new([1])
	var incantation2 = spell.new([1,2])
	var incantation3 = spell.new([2,2])
	var spellsArray = spell_tree.new([
		spell.new([1,2,3,4,5]),
		spell.new([1,3,4,5]),
		spell.new([2,2,2,3]),
		spell.new([2,2,1,4]),
		spell.new([2,2,3,5]),
	])
	var availableSpells = spellsArray.getNextSpells(incantation1)
	var availableSpells2 = spellsArray.getNextSpells(incantation2)
	var availableSpells3 = spellsArray.getNextSpells(incantation3)
	
	print("Spells Available for ")
	print(incantation1.spelling)
	print("are:")
	for spells in availableSpells:
		print(spells.spelling)
	#print("Spelling 2")
	#for spells in availableSpells2:
		#print(spells.spelling)
	#print("Spelling 3")
	#for spells in availableSpells3:
		#print(spells.spelling)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
