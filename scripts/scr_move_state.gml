/// scr_move_state
movement = MOVE;
if (Obj_Input.dash_key) {
    var xdir = lengthdir_x(8, face*90);
    var ydir = lengthdir_y(8, face*90);
    var speaker = instance_place(x+xdir, y+ydir, Obj_Speaker);
    if (speaker != noone) {
        // Talk
        with (speaker) {
            if (!instance_exists(dialog)) {
                dialog = instance_create(x+xoffset, y+yoffset, Obj_DialogueBox);
                dialog.text = text;
            } else {
                dialog.text_page++;
                dialog.text_count = 0;
                if (dialog.text_page > array_length_1d(dialog.text)-1) {
                    with (dialog) {
                        instance_destroy();
                    }
                }
            }
        }
    } else if (Obj_AkariStats.stamina >= DASH_COST) {
        // Dash
        state = scr_dash_state;
        alarm[0] = room_speed/3;
        Obj_AkariStats.stamina -= DASH_COST;
        Obj_AkariStats.alarm[0] = room_speed;
    }
}

if (Obj_Input.attack_key) {
    image_index = 0;
    state= scr_attack_state;
}

if (Obj_Input.spell_key) {
    var p = instance_create(x, y, Obj_Projectile);
    var xforce = lengthdir_x(20, face*90);
    var yforce = lengthdir_y(20, face*90);
    p.creator = id;
    with (p) {
        physics_apply_impulse(x, y, xforce, yforce)
    }
}

// Get Direction
dir = point_direction(0, 0, Obj_Input.xaxis, Obj_Input.yaxis);

//Get Length
if (Obj_Input.xaxis == 0 and Obj_Input.yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face(dir);
}

// Movement-HSpd & VSpd
var hspd = lengthdir_x(len, dir);
var vspd = lengthdir_y(len, dir);

// Movement-Position
phy_position_x += hspd;
phy_position_y += vspd;

// Sprite Control
image_speed = .2;
if (len == 0) image_index = 0;