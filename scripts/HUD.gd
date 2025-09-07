extends CanvasLayer

func show_message(text):
	print("Showing message: ", text)
	$MessageLabel.visible = true
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageLabel.modulate = Color(1, 1, 1, 1)  # Make sure it's fully opaque
	$MessageTimer.start()
	
func tutorial():
	show_message("Lamb Antarache Prem")
	yield($MessageTimer, "timeout")
	$MessageLabel.text = "Dave ani ujve ban vaparoon halva.\nVar ban vaparoon udi mara.\nPudhe ja ani tujhi premkahani anubhav kara!"
	$MessageLabel.show()
	yield(get_tree().create_timer(5), "timeout")
	$MessageLabel.hide()
	
func show_anniversary():
	show_message("Mi tujhyavar khup prem karto, majhya priye Piyu!")
	yield(get_tree().create_timer(3), "timeout")	
	yield($MessageTimer, "timeout")
	$MessageLabel.text = "Lamb Antarache Prem\nPunha khela!"
	$MessageLabel.show()
	yield(get_tree().create_timer(3), "timeout")
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/TitleScreen.tscn")

func _on_MessageTimer_timeout():
	$MessageLabel.hide()

func show_love_poem():
	# Show pink background
	$PoemBackground.show()
	
	# Display the beautiful poem in red text
	var poem_text = """Piyu majhi,

Tujhya athvanini majhe hruday roj fulte,
Lamb asunahi tu javal aslyasarkhi vatte,
Janu pratyeka shvasat tujhe nav dadle aahe.

Tujhe hasne majhya divasacha suryoday aahe,
Tujha awaz majhya ratriche chandraprakash aahe,
Antar aplyala todu shakat nahi,
Karan aple nate hrudayachya dhaganibani jodle aahe.

Ani Piyu, mala nehmicha janvate,
Tujhe kutumb majhihi kutumb aahe.
Vidya Auntiche prem mhanje aaiche mamatva,
Sachi mhanje majhi god bahin,
Milin Uncle mhanje ek adharastambha,
Jyanni mala nehmi aaplanse kele.
Tyanchya premamule mala kadhihi parka aslyasarkhe vatle nahi,
Tar tumchyacha gharacha ek bhag aslyasarkhe vatle.

Kadhi kadhi man udas hote ya antaramule,
Pan tujhe ani tujhya kutumbacha prem mala punha jivant karte,
Tu ahes majhe apurna swapna purna karnaare satya,
Majhya aatmyachi god jadu, majhe vishva.

Piyu majhi devi,
Ek divas aapan ya antaravar mat karu,
Ani tya kshani akashatil sagale tare
Aplya premala sakshi detil."""
	
	$PoemLabel.text = poem_text
	$PoemLabel.show()
	
	# Cycle through photos during poem
	cycle_photos_during_poem()
	
	# Show for 15 seconds
	yield(get_tree().create_timer(15.0), "timeout")
	
	# Hide poem
	$PoemBackground.hide()
	$PoemLabel.hide()

func cycle_photos_during_poem():
	var photos = ["pic4.png", "IMG-20231121-WA0097.jpg", "IMG-20250407-WA0058.jpg"]
	for i in range(3):
		print("Cycling photo during poem: ", photos[i])
		yield(get_tree().create_timer(5.0), "timeout")


