class_name spell

var spelling = []

func _init(spelling: Array):
	self.spelling = spelling
	pass

func isValidSpell(spell: Array):
	for letterIndex in spell.size():
		if self.spelling[letterIndex] != spell[letterIndex]:
			return false
	return true
