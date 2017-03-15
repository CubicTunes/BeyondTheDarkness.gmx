if room = Wispfire_1 {
rm_right = Wispfire_2
rm_left = Snail_1
rm_up = -1
rm_down = -1
}

if room = Wispfire_2 {
rm_right = -1
rm_left = Wispfire_1
rm_up = Wispfire_3
rm_down = -1
}

if room = Wispfire_3 {
rm_right = Wispfire_7
rm_left = Wispfire_5
rm_up = Wispfire_6
rm_down = Wispfire_2
}

if room = Snail_1 {
rm_right = Wispfire_1
rm_left = -1
rm_up = -1
rm_down = -1
}

if room = Wispfire_5 {
rm_right = Wispfire_3
rm_left = -1
rm_up = WispfirePuzzle_1
rm_down = -1
}

if room = WispfirePuzzle_1 {
rm_right = -1
rm_left = -1
rm_up = WispfirePuzzle_2
rm_down = Wispfire_5
}

if room = WispfirePuzzle_2 {
rm_right = -1
rm_left = WispfirePuzzle_3
rm_up = -1
rm_down = WispfirePuzzle_1
}

if room = WispfirePuzzle_3 {
rm_right = WispfirePuzzle_2
rm_left = -1
rm_up = -1
rm_down = WispfirePuzzle_4
}

if room = WispfirePuzzle_4 {
rm_right = -1
rm_left = -1
rm_up = WispfirePuzzle_3
rm_down = WispfireMBoss_1
}

if room = WispfireMBoss_1 {
rm_right = -1
rm_left = -1
rm_up = WispfirePuzzle_4
rm_down = -1
}

if room = Wispfire_6 {
rm_right = -1
rm_left = -1
rm_up = -1
rm_down = Wispfire_3
}

if room = Wispfire_7 {
rm_right = -1
rm_left = Wispfire_3
rm_up = Wispfire_8
rm_down = -1
}

if room = Wispfire_8 {
rm_right = -1
rm_left = WispfireBoss_1
rm_up = -1
rm_down = Wispfire_7
}

if room = WispfireBoss_1 {
rm_right = Wispfire_8
rm_left = -1
rm_up = Wispfire_9
rm_down = -1
}

if room = Wispfire_9 {
rm_right = -1
rm_left = -1
rm_up = WispfireVillage_1
rm_down = WispfireBoss_1
}

if room = WispfireVillage_1 {
rm_right = -1
rm_left = -1
rm_up = -1
rm_down = Wispfire_9
}

if x = 0 {
if rm_left!= -1 {
room_goto(rm_left)
}

}
if x = room_width {
if rm_right!= -1 {
room_goto(rm_right)
}
}

if y = room_height {
if rm_down!= -1 {
room_goto(rm_down)
}
}
if y = 0 {
if rm_up!= -1 {
room_goto(rm_up)
}
}