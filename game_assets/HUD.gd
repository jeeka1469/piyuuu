extends CanvasLayer

func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageTimer.start()
	
func tutorial():
	show_message("लांब अंतराचे प्रेम")
	yield($MessageTimer, "timeout")
	$MessageLabel.text = "डावे आणि उजवे बाण की वापरून हलवा.\nवर जाण्यासाठी वरचा बाण की वापरा."
	$MessageLabel.show()
	yield(get_tree().create_timer(3.0), "timeout")
	$MessageLabel.hide()
	
func show_anniversary():
	show_message("मी तुझ्यावर खूप प्रेम करतो, माझ्या प्रिये!")
	yield(get_tree().create_timer(3.0), "timeout")	
	yield($MessageTimer, "timeout")
	$MessageLabel.text = "लांब अंतराचे प्रेम\nपुन्हा खेळा!"
	$MessageLabel.show()
	yield(get_tree().create_timer(3.0), "timeout")
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/TitleScreen.tscn")

func show_love_poem():
	# Create pink background with shadow
	$PoemBackground.show()
	$PoemBackground.color = Color(1.0, 0.7, 0.8, 0.9)  # Pink with transparency
	
	# Show the beautiful poem in red text
	var poem_text = """पियू माझी,
तुझ्या आठवणींनी माझं हृदय रोज फुलतं,
लांब असूनही तू जवळ असल्यासारखी वाटतेस,
जणू प्रत्येक श्वासात तुझं नाव दडलं आहे.

तुझं हसणं माझ्या दिवसाचा सूर्योदय आहे,
तुझा आवाज माझ्या रात्रिचा चंद्रप्रकाश आहे,
अंतर आपल्याला तोडू शकत नाही,
कारण आपलं नातं हृदयाच्या धाग्यांनी जोडलेलं आहे.

आणि पियू, मला नेहमीच जाणवतं,
तुझं कुटुंब माझंही कुटुंब आहे.
विद्या आंटींचं प्रेम म्हणजे आईचं ममत्व,
साची म्हणजे माझी गोड बहीण,
मिलिन अंकल म्हणजे एक आधारस्तंभ,
ज्यांनी मला नेहमी आपलंसं केलं.

त्यांच्या प्रेमामुळे मला कधीही परका असल्यासारखं वाटलं नाही,
तर तुमच्याच घराचा एक भाग असल्यासारखं वाटलं.

कधी कधी मन उदास होतं या अंतरामुळे,
पण तुझं आणि तुझ्या कुटुंबाचं प्रेम मला पुन्हा जिवंत करतं,
तू आहेस माझं अपूर्ण स्वप्न पूर्ण करणारं सत्य,
माझ्या आत्म्याची गोड जादू, माझं विश्व.

पियू माझी देवी,
एक दिवस आपण या अंतरावर मात करू,
आणि त्या क्षणी आकाशातील सगळे तारे
आपल्या प्रेमाला साक्ष देतील"""
	
	$PoemLabel.text = poem_text
	$PoemLabel.show()
	
	# Show her photos during the poem (cycling through them)
	# Note: These will work once PhotoDisplay node is added
	print("Showing her photo during poem: pic4.png")
	yield(get_tree().create_timer(5.0), "timeout")
	print("Showing her photo during poem: IMG-20231121-WA0097.jpg")
	yield(get_tree().create_timer(5.0), "timeout")
	print("Showing her photo during poem: IMG-20250407-WA0058.jpg")
	
	# Keep the poem displayed for 5 more seconds
	yield(get_tree().create_timer(5.0), "timeout")
	$PoemBackground.hide()
	$PoemLabel.hide()

func _on_MessageTimer_timeout():
	$MessageLabel.hide()


