///Rooms
if room = Wispfire_1 {
scr_rmt(room_width,room_height/2,0,room_height/2,Wispfire_2,100)
scr_rmt(0,room_height/2,640,144,Snail_1,100)
}
//Wispfire_1 done

if room = Wispfire_2 {
scr_rmt(0,room_height/2,640,room_height/2,Wispfire_1,100)
scr_rmt(432,0,1072,room_height,Wispfire_3,100)
}
//Wispfire_2 done

if room = Wispfire_3 {
scr_rmt(1280,112,0,128,Wispfire_7,100)
scr_rmt(0,192,640,192,Wispfire_4,100)
scr_rmt(304,0,304,room_height,Wispfire_6,100)
scr_rmt(544,0,544,room_height,Wispfire_6,100)
scr_rmt(1072,room_height,432,0,Wispfire_2,100)
}
//Wispfire_3 done

if room = Snail_1 {
scr_rmt(room_width,144,0,144,Wispfire_1,100)
}
//Snail_1 done

if room = Wispfire_4 {
scr_rmt(640,192,0,192,Wispfire_3,100)
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
scr_rmt(304,room_height,304,0,Wispfire_3,100)
scr_rmt(544,room_height,544,0,Wispfire_3,100)
}
//Wispfire_6 done

if room = Wispfire_7 {
scr_rmt(0,128,1280,112,Wispfire_3,100)
scr_rmt(336,0,336,room_height,Wispfire_8,100)
}
//Wispfire_7 done

if room = Wispfire_8 {
scr_rmt(0,144,room_width,464,WispfireBoss_1,100)
scr_rmt(336,room_height,336,0,Wispfire_7,100)
}
//Wispfire_8 done

if room = WispfireBoss_1 {
scr_rmt(room_width,464,0,144,Wispfire_8,100)
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