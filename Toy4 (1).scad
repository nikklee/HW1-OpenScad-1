FINE = 100;
GROSS = 10;

NOT_CENTERED = false;
CENTERED = true;

module base(){
    coordinates = [0, 0, -.19];
    
    translate (coordinates)
        cylinder (r=3, h=.3, $fn=FINE);
}

module nut(){
    coordinates = [0,0,-.95];
    
    translate (coordinates)
        cylinder (r=2, h=1.7, center=NOT_CENTERED);
}

module leg(offset_x, offset_y){
    offset_z = -3;
    translate ([offset_x, offset_y, offset_z])
        cylinder (r=.1, h=3, $fn=GROSS);
}

module legs(){
    right = 2;
    left = -2;
    back = 1.5;
    front = -1.5;
    
    leg(right, back);
    leg(left, back);
    leg(right, front);
    leg(left, front);
}

module pyramid_level(side, height){
    difference(){
        cube ([side,side,height], center=CENTERED, $fn=FINE);
    }
}

module pyramid(){
    base_side = .8;
    base_height = 4.5;
    side_step = -.1;
    height_step = .2;
    
    pyramid_levels = 6;
    
    pyramid_level(base_side, base_height);
    
    for(i = [1:pyramid_levels]){
        side = base_side + i * side_step;
        height = base_height + i* height_step;
        
        pyramid_level(side,height);
    }
    
}

module globe(){
    sphere (1.9, $fn=FINE);
}

module toy(){
    base();
    nut();
    legs();
    pyramid();
    globe();
}

toy();