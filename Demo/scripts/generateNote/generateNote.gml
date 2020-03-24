rand = irandom(4);
switch(rand) {
	case 0:
	// Space note
	instance_create_layer(1640, 0, "instances_2", obj_note_Space);
	break;
	case 1:
	// F note
	instance_create_layer(1230, 0, "instances_2", obj_note_F);
	break;
	case 2:
	// D note
	instance_create_layer(820, 0, "instances_2", obj_note_D);
	break;
	case 3:
	// S note
	instance_create_layer(410, 0, "instances_2", obj_note_S);
	break;
	case 4:
	// A note
	instance_create_layer(0, 0, "instances_2", obj_note_A);
	break;
}