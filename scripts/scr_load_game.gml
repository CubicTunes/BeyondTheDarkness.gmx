/// scr_load_game
var file = file_text_open_read(working_directory+"mysavegame.txt");
var save_string = file_text_read_string(file);
file_text_close(file);
save_string = base64_decode(save_string);
var save_data = json_decode(save_string);

var save_room = save_data[? "room"];
if (room != save_room) {
    room_goto(save_room);
}

with (Obj_AkariStats) {
    player_xstart = save_data[? "x"];
    player_ystart = save_data[? "Y"];
    if (instance_exists(Obj_Akari)) {
        Obj_Akari.x = player_xstart;
        Obj_Akari.y = player_ystart;
        Obj_Akari.phy_position_x = player_xstart;
        Obj_Akari.phy_position_y = player_ystart;
    } else {
        instance_create(player_xstart, player_ystart, Obj_Akari);
    }
    hp = save_data[? "hp"];
    maxhp = save_data[? "maxhp"];
    stamina = save_data[? "stamina"];
    maxstamina = save_data[? "maxstamina"];
    expr = save_data[? "expr"];
    maxexpr = save_data[? "maxexpr"];
    level = save_data[? "level"];
    attack = save_data[? "attack"];
    coin = save_data[? "coins"];
}

ds_map_destroy(save_data);