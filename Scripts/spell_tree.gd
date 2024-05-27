extends Node

class_name spell_tree

var available_spells = []

func _init(spell_list):
	self.available_spells = spell_list

func getNextSpells(castedSpell = spell.new([])):
	return self.available_spells.filter(func(spellItem): return spellItem.isValidSpell(castedSpell.spelling))
