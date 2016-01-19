include <makerblock.scad>
include <sc8.scad>


translate([ Beam0824_i,
        Beam0824_i * 3 + Beam0824_f/2,
        -(Beam0824_i * 5) ]) {
    rotate([90,0,90]) {
        Beam0824(5);

        translate([0,Beam0824_i * 4 - 2,Beam0824_h])
        rotate([90,0,0])
        Bracket3x3();

        translate([0,2,Beam0824_h])
        Bracket3x3();

    }
    translate([22,12,-10]) {
        cylinder(h=150, d=4, $fn=10);
        translate([0,0,-6])
        cylinder(h=6,  r1=1, r2=2);
        translate([0,0,-15])
        cylinder(h=10,  r1=.1, r2=.2);
    }

}






//  belt mount
translate([0,Beam0824_i * 3 - 2,Beam0824_h])
rotate([90,0,0]) {
Bracket3x3();
translate([0,0,-2])
beltthing();
}


//y carrier beam
Beam0824(7);

// y drive
color([.4,.4,.4]) {
// bearings
translate([-3,100,-12])
rotate([90,0,90])
Sc8Bearing();

translate([-3,20,-12])
rotate([90,0,90])
Sc8Bearing();

// rods
translate([-100,20,-11])
rotate([0,90,0])
cylinder(h=200, d=8);

translate([-100,100,-11])
rotate([0,90,0])
cylinder(h=200, d=8);

// belt
translate([-100,46,23])
rotate([0,90,0])
cube([6,.5,200]);

translate([-100,65,23])
rotate([0,90,0])
cube([6,.5,200]);
}

