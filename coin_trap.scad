// Coin Trap; a 3d-printed cage to hold a coin 
// by Ethan MT
    // v. 0.1, 21 November, 2018

//parameters
$fa=1;
$fs=1;
coin_d = 23.88;  // diameter of a quarter
coin_th = 1.58;  // thickness of a quarter
gap = 1;

// the coin
%cylinder(d=coin_d, h=coin_th, center=true);
 
// the trap
difference() {
    minkowski() {
    cube(size=coin_d*0.8,center=true);
        sphere(r=coin_d*0.1);
    }
translate([0,0,-coin_d]) cylinder(h=coin_d*2,d=coin_d*0.66);
    rotate([90,0,0]) translate([0,0,-coin_d]) cylinder(h=coin_d*2,d=coin*0.66);
    rotate([0,90,0]) translate([0,0,-coin_d]) cylinder
