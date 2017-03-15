if place_meeting(x,y,Obj_Bullet) {
healthvar--
if healthvar = 0 {
cbul = instance_nearest(x,y,Obj_Bullet)
with(cbul) {
instance_destroy()
}
instance_destroy()
}
}