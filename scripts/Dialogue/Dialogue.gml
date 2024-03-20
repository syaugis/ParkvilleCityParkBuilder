function Dialouge() constructor{
	// initialize dialog array
	_dialogs = [];
	
	// add the dialog message
	add = function(_sprite, _message){
		array_push(_dialogs, {
				sprite: _sprite,
				message: _message,
		});
	}
	
	// change the dialog with the next one
	pop = function() {
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	
	// check is there another dialog or not
	count = function() {
		return array_length(_dialogs);
	}
}