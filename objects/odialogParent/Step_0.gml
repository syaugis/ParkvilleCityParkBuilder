if(showing_dialog == false) {
	// destroy the instance if the dialog is already set
	if(dialog.count() <= 0) {
		instance_destroy();
		return;
	}
	// set current dialog and condition
	current_dialog = dialog.pop();
	showing_dialog = true;
} else {
	// set condition dialog 
	if(keyboard_check_released(key_next)) {
		showing_dialog = false;
		alpha = 0;
	}
}
