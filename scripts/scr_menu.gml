if instance_exists(Obj_TacticsTab) {
xxo = Obj_TacticsTab.x
yyo = Obj_TacticsTab.y+23
xx=xxo+15
yy=yyo
for (i=Obj_TacticsTab.mmin;i<=Obj_TacticsTab.mmax;i+=1) {
    draw_set_color(global.gray)
    if Obj_TacticsTab.msel=i {
        draw_set_color(c_white)
    }
    draw_set_font(global.font)
    
    draw_text(xx,yy,Obj_TacticsTab.mup[i])
    
    yy+=37
    
    if i=Obj_TacticsTab.mmax/2 {
        yy=yyo
        xx=xxo+100-3    
    }
}
}