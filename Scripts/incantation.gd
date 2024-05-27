class_name incantation

var words = []

func _init(words: Array):
	self.words = words
	pass

func isValidSpell(spell: Array):
	for letterIndex in spell.size():
		if self.spelling[letterIndex] != spell[letterIndex]:
			return false
	return true
