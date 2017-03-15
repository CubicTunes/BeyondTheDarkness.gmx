/// scr_attack_state
movement = ATTACK;

image_speed = .9;
if (image_index >= 2 and attacked == false) {
    var xx = 0;
    var yy = 0;
    switch (face) {
        case DOWN:
        xx = x;
        yy = y+80;
        break;
        
        case UP:
        xx = x;
        yy = y-80;
        break;
    
        case LEFT:
        xx = x-80;
        yy = y+2;
        break;
        
        case RIGHT:
        xx = x+80;
        yy = y+2;
        break;
    }
    var damage = instance_create(xx, yy, Obj_Damage);
    damage.creator = id;
    damage.damage = Obj_AkariStats.attack;
    attacked = true;
}