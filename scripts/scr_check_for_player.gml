/// scr_check_for_player()
if (instance_exists(Obj_Akari)) {
    var dis = point_distance(x, y, Obj_Akari.x, Obj_Akari.y);
    if (dis < sight) {
        state = scr_enemy_chase_state;
        var dir = point_direction(x, y, Obj_Akari.x, Obj_Akari.y);
        xaxis = lengthdir_x(1, dir);
        yaxis = lengthdir_y(1, dir);
    } else {
     scr_enemy_choose_next_state();
    }
} else {
    scr_enemy_choose_next_state();
}