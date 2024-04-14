extends Control

# Attribut zur Hausaufgabe
var counter : int = 0
var rateversuche : int = 0
# Attribute für unser Ratespiel
var computer_number : int
var player_number : int
var button_number : int


func _ready():
	computer_number = randi_range(0, 200)
	print(computer_number)
	$Titel.text = "Rate eine Zahl zwischen 0 und 200"
	$InfoLabel.text = "Info"
	$Rateversuche.text = "deine Rateversuche : " + str(rateversuche)
	
func _on_button_pressed():
	# Teil der Hausaufgabe
	counter += 1
	$Button.text = "Klicks: " + str(counter)
#	print("Der Button wurde gedrückt

func _on_chek_button_pressed():
	player_number = $SpinBox.value
	if (player_number < computer_number):
		$InfoLabel.text = "Die geratene Zahl ist zu klein."
		rateversuche += 1
		$Rateversuche.text = "deine Rateversuche : " + str(rateversuche)
	elif (player_number > computer_number):
		$InfoLabel.text = "Die geratene Zahl ist zu groß."
		rateversuche += 1
		$Rateversuche.text = "deine Rateversuche : " + str(rateversuche)
	else:
		rateversuche += 1
		$InfoLabel.text = "RICHTIG!!!  Versuche gebraucht : " + str(rateversuche)
		$Rateversuche.text = "deine Rateversuche : " + str(rateversuche)
		restart_game()

func restart_game():
	$SpinBox.value = 0
	$Button.text = "Klick mich"
	computer_number = randi_range(0, 200)
	print(computer_number)
	rateversuche = 0
	$Rateversuche.text = "deine Rateversuche : " + str(rateversuche)
	
