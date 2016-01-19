Beam0824_h=8;
Beam0824_w=24;
Beam0824_i=16;
Beam0824_f=8;

module Beam0824(n_) {
    n = n_ - 1;
    d = n * Beam0824_i + 2 * Beam0824_f;
    ledge = (Beam0824_w - Beam0824_i)/2;

    difference(){
        cube([Beam0824_w,d, Beam0824_h]);
        union() {
            for (i = [0:n]) {
                y = Beam0824_f + i * Beam0824_i;

                translate([ledge,y,-1])
                    cylinder(h=Beam0824_h + 2,d=4, $fn=20);

                translate([Beam0824_w - ledge,y,-1])
                    cylinder(h=Beam0824_h + 2,d=4, $fn=20);
            }
        }
    }
}

Sheet_thickness=2;
Bracket_h=26;
Bracket_i = 8;


module Sheet3x3(){
    ledge = (Beam0824_w - Beam0824_i)/2;
    difference() {
        cube([Beam0824_w, Bracket_h, Sheet_thickness]);
        union(){
            for (i = [0:2]) {
                for (j = [0:2]) {
                    x = ledge + (Bracket_i * i);
                    y = Sheet_thickness + ledge + (Bracket_i * j);
                    translate([x,y,-1])
                        cylinder(h=Sheet_thickness+2, d=4.1, $fn=20);
                }
            }
        }
    }
}
module Bracket3x3() {
    Sheet3x3();
    translate([0,Sheet_thickness,0])
    rotate([90,0,0])
    Sheet3x3();
}

module beltthing() {
    difference() {
        Sheet3x3();
        t = Beam0824_w/2 - 10/2 ;
        translate([t, t + 2,-1])
            cube([10,10,4]);
    }
}
