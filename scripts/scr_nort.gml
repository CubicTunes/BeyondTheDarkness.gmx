nort = room_add()
rmheight = 352
rmwidth = 640
room_set_background_colour(nort,c_black,1)
room_set_height(nort,rmheight)
room_set_width(nort,rmwidth)
room_set_view(nort,0,1,0,0,306,204,0,0,960,540,153,102,-1,-1,obj_player)
//room_instance_add(nort,rmwidth/2,rmheight/2,obj_player)
obj_player.dir = obj_player.lastpos
room_goto(nort)
room_set_view(nort,0,1,0,0,306,204,0,0,960,540,153,102,-1,-1,obj_player)
global.nort=true
global.lines=0
global.linelagger=-100