
switch(menu_index) {
	case 0:
		room_goto(menu);
		break;
	case 1:
		room_goto(LVL1Debug);
		break;
	case 3:
		game_end();
		break;
}