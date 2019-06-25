extends Control


func _on_TextEdit_text_changed():
	var text = $CenterContainer/HSplitContainer/PanelContainer/TextEdit.text
	$CenterContainer/HSplitContainer/right/RichTextLabel.clear()
	
	for word in text.split(" ", false):
		if str(word).strip_edges().begins_with(str("[icon]")) and str(word).length() == 6:
			$CenterContainer/HSplitContainer/right/RichTextLabel.add_image(load("res://icon.png"))
		else:
			$CenterContainer/HSplitContainer/right/RichTextLabel.append_bbcode(word + " ")