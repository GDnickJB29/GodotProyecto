extends Node

var valor_inicial = 200
var intervalo = [10, 100]
var suma = 1
var resta = 1
var switch = true

func _ready():
	pass

func sumar(inicial, valor_a_sumar):
	inicial += valor_a_sumar
	return inicial

func restar(inicial, valor_a_restar):
	inicial -= valor_a_restar
	return inicial

func _process(_delta):
	if switch == true:
		print(valor_inicial)
		valor_inicial = sumar(valor_inicial, suma)
		if valor_inicial >= intervalo[1]:
			switch = false
	elif switch == false:
		print(valor_inicial)
		valor_inicial = restar(valor_inicial, resta) 
		if valor_inicial <= intervalo[0]:
			switch = true
	
	pass
