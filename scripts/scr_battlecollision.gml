test="true"
if place_meeting(x,y,obj_player) {
obj_player.LastToucher=self.sprite_index
if instance_exists(obj_overlay)=false {
instance_create(obj_player.x,obj_player.y,obj_overlay)
global.pause=true
scr_battlescript()
instance_destroy()
}
}