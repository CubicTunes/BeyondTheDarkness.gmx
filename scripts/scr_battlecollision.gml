test="true"
if place_meeting(x,y,obj_player) {
if instance_exists(obj_overlay)=false {
instance_create(obj_player.x,obj_player.y,obj_overlay)
global.pause=true
}
}