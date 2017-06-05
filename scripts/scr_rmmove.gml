///Rooms
if room = Wispfire_1 {
scr_rmt(room_width,room_height/2,0,150,Wispfire_2,100)
scr_rmt(0,140,640,124,Snail_1,100)
}
//Wispfire_1 done

if room = Wispfire_2 {
scr_rmt(0,room_height/2,640,150,Wispfire_1,100)
scr_rmt(430,0,1056,room_height,Wispfire_3,100)
}
//Wispfire_2 done

if room = Wispfire_3 {
scr_rmt(1280,102,0,102,Wispfire_7,100)
scr_rmt(0,168,640,168,Wispfire_4,100)
scr_rmt(288,0,288,room_height,Wispfire_6,100)
scr_rmt(528,0,528,room_height,Wispfire_6,100)
scr_rmt(1060,room_height,416,0,Wispfire_2,100)
}
//Wispfire_3 done

if room = Snail_1 {
scr_rmt(room_width,140,0,124,Wispfire_1,100)
}
//Snail_1 done

if room = Wispfire_4 {
scr_rmt(640,168,0,168,Wispfire_3,100)
scr_rmt(48,0,48,352,WispfirePuzzle_1,100)
}



if room = WispfirePuzzle_1 {
scr_rmt(304,0,304,352,WispfirePuzzle_2,100)
scr_rmt(48,320,48,0,Wispfire_4,100)
}

//WispfirePuzzle_1 done

if room = WispfirePuzzle_2 {
scr_rmt(0,176,room_width,176,WispfirePuzzle_3,100)
scr_rmt(304,352,304,0,WispfirePuzzle_1,100)
}

//WispfirePuzzle_2 done

if room = WispfirePuzzle_3 {
scr_rmt(room_width,176,0,176,WispfirePuzzle_2,100)
scr_rmt(304,room_height,304,0,WispfirePuzzle_4,100)
}

//WispfirePuzzle_3 done

if room = WispfirePuzzle_4 {
scr_rmt(304,0,304,room_height,WispfirePuzzle_3,100)
scr_rmt(560,room_height,624,0,WispfireMBoss_1,100)
}

//WispfirePuzzle_4 done

if room = WispfireMBoss_1 {
scr_rmt(624,0,560,room_height,WispfirePuzzle_4,100)
}

//WispfireMBoss_1 done

if room = Wispfire_6 {
scr_rmt(288,room_height,288,0,Wispfire_3,100)
scr_rmt(528,room_height,528,0,Wispfire_3,100)
}
//Wispfire_6 done

if room = Wispfire_7 {
scr_rmt(0,102,1280,102,Wispfire_3,100)
scr_rmt(320,0,320,room_height,Wispfire_8,100)
}
//Wispfire_7 done

if room = Wispfire_8 {
scr_rmt(0,120,room_width,440,WispfireBoss_1,100)
scr_rmt(320,room_height,320,0,Wispfire_7,100)
}
//Wispfire_8 done

if room = WispfireBoss_1 {
scr_rmt(room_width,448,0,120,Wispfire_8,100)
scr_rmt(room_width/2,0,144,480,Wispfire_9,100)
}
//WispfireBoss_1 done

if room = Wispfire_9 {
scr_rmt(160,0,592,1184,WispfireVillage_1,100)
scr_rmt(146,480,304,0,WispfireBoss_1,100)
}

if room = WispfireVillage_1 {
scr_rmt(1184,560,0,160,Wispfire_10,100)
scr_rmt(592,1184,144,0,Wispfire_9,100)
}

if room = Wispfire_10 {
scr_rmt(0,160,1184,552,WispfireVillage_1,100)
scr_rmt(640,176,0,160,Wispfire_11,100)
}

if room = Wispfire_11 {
scr_rmt(0,160,640,176,Wispfire_10,100)

}
