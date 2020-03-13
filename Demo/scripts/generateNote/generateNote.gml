rand = irandom(4);
switch(rand) {
	case 0:
	// Space note
	instance_create_layer(1640, 0, "instances", obj_note_Space);
	break;
	case 1:
	// F note
	instance_create_layer(1230, 0, "instances", obj_note_F);
	break;
	case 2:
	// D note
	instance_create_layer(820, 0, "instances", obj_note_D);
	break;
	case 3:
	// S note
	instance_create_layer(410, 0, "instances", obj_note_S);
	break;
	case 4:
	// A note
	instance_create_layer(0, 0, "instances", obj_note_A);
	break;
}

/*
ok the todo list was deleted somehow so going from memory...alarm
1. Edit spreadsheet to have the data we need. (Done)
2. Put data into .txt file (Done)
3. get the code above working(it should randomly generate notes) (DONE?)
4. load the data into something to create the timeline when we load the room(pass code above as func)
*/