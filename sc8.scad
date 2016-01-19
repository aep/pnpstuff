module Sc8Bearing() {
    difference() {
        translate([-17,-7,0])
            union() {
                cube([34,18,30]);
                translate([17,3,0])
                    cylinder(h=30, d=16, $fn=6);

            }

        translate([12,11.5,6])
            rotate([90,0,0])
            cylinder(h=19, d=4);

        translate([-12,11.5,6])
            rotate([90,0,0])
            cylinder(h=19, d=4);

        translate([-12,11.5,24])
            rotate([90,0,0])
            cylinder(h=19, d=4);

        translate([12,11.5,24])
            rotate([90,0,0])
            cylinder(h=19, d=4);

        translate([0,.6,-10])
            cylinder(h=42, d=9);
    }
}



