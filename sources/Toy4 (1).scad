translate ([0,0,-.19])
cylinder (r=3, h=.3, $fn=100);
translate ([0,0,-.95])
cylinder (r=2, h=1.7, center=false);
translate ([2,1.5,-3])
cylinder (r=.1, h=3, $fn=10);
translate ([-2,1.5,-3])
cylinder (r=.1, h=3, $fn=10);
translate ([-2,-1.5,-3])
cylinder (r=.1, h=3, $fn=10);
translate ([2,-1.5,-3])
cylinder (r=.1, h=3, $fn=10);
cube ([.8,.8,4.5], center=true, $fn=100);
difference() {
cube ([.7,.7,4.7], center=true, $fn=100);}
difference() {
cube ([.6,.6,4.9], center=true, $fn=100);}
difference() {
cube ([.5,.5,5.1], center=true, $fn=100);}
difference() {
cube ([.4,.4,5.3], center=true, $fn=100);}
difference() {
cube ([.3,.3,5.5], center=true, $fn=100);}
difference() {
cube ([.2,.2,5.7], center=true, $fn=100);}
mirror ([0,0,-5])
sphere (1.9, $fn=100);
