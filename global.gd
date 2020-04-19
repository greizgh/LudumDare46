extends Node

var nb_pulse: int = 0
var elapsed_time: int = 0
var nb_hearts: int = 0
# did the player have been warned about multiple hearts?
var promoted: bool = false
# achieved if someone manages to keep the pace for 4 hearts:
var epic_win: bool = false

func reset() -> void:
	nb_pulse = 0
	elapsed_time = 0
	nb_hearts = 0
	epic_win = false

func get_score() -> int:
	return (nb_hearts * 10) * ( (nb_pulse * 10) + elapsed_time )
