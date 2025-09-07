extends Node2D

func _ready():
	$HUD.tutorial()

func _on_Goal_body_entered(_body):
	$HUD.show_anniversary()

func _on_CheckTutorial_body_exited(_body):
	# Tutorial checkpoint - this triggers the initial tutorial
	pass

func show_photo(photo_path):
	print("Displaying photo: ", photo_path)
	# Photo display logic will be handled by scene nodes

func _on_ChecksHello_body_exited(_body):
	print("Hello checkpoint triggered!")
	show_photo("pic4.png")
	$HUD.show_message("Hello Piyu majhi priye.")

func _on_ChecksReason_body_exited(_body):
	show_photo("IMG-20231121-WA0097.jpg")
	$HUD.show_message("Mala tujhyavar majhe prem vyakta karayche hote.\nTu majhya aayushyat khup mahatvaachi bhumika bajavali ahes.\nTujhyamule mi ha chotasa game banvu shakalo.")

func _on_ChecksBackground_body_exited(_body):
	show_photo("IMG-20250407-WA0058.jpg")
	$HUD.show_message("Ya lamb antaramule khup kashta zale aahet.\nPan tarihi tu dur asunahi majhyasobat ahes.\nPratyeka pavalavar tujhe samarthan milte.")

func _on_ChecksLeap1_body_exited(_body):
	$HUD.show_message("Tu majhya adchaninmadhun mala madhat keli.\nMajhya swapnanna pathimba dila.\nKitihi lahan aso...")

func _on_ChecksLeap2_body_exited(_body):
	$HUD.show_message("...kinva mothya aso.\nTujhya athvani mala shakti detat.")

func _on_ChecksFamily_body_exited(_body):
	$HUD.show_message("Tujhe video call majhya divasatil sarvaat anandadayi kshan aahet.\nMi tula khup miss karto Piyu.")

func _on_ChecksUp1_body_exited(_body):
	$HUD.show_message("Swapnatahi aapan ekatra asato.\nLavkarach aapan ekatra asu ya vachnaane mi jagato.")	

func _on_ChecksUp2_body_exited(_body):
	$HUD.show_message("Aple bhavishya kiti sundar asel.\nJevha mi udas hoto,\ntujhe premache shabda mala var uchaltat.")

func _on_ChecksBoost1_body_exited(_body):
	$HUD.show_message("Vidya Auntiche prem mhanje aaiche mamatva.\nSaachi mhanje majhi god bahin.\nMileen Uncle mhanje ek adharastambha.")	

func _on_ChecksBoost2_body_exited(_body):
	$HUD.show_message("Tyanchya premamule mala kadhihi parka aslyasarkhe vatle nahi.\nTujhe kutumb majhihi kutumb aahe.\nDhanyawad tujhya sarvanche prem dilyabaddal.")	

func _on_CheckFall_body_exited(_body):
	$HUD.show_message("Kadhi kadhi man udas hote ya antaramule...")
	yield(get_tree().create_timer(3.0), "timeout")
	$HUD.show_love_poem()

func _on_CheckRestart_body_exited(_body):
	get_tree().reload_current_scene()
