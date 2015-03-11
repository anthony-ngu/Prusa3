use <bushing.scad>

module nut(){
	difference(){
			// Nut trap
            translate([-2, 18, 5]) cube_fillet([20, 17, 10], center = true, vertical=[8, 0, 0, 5]);
			
			// m5 nut insert
            	translate([0, 17, 0]) rotate([0, 0, 26]){
				//rod
            		translate([0, 0, -1]) cylinder(h=(4.1 / 2 + 5), r=3, $fn=32);
		    		//nut
        			translate([0, 0, 9]) cylinder(r=6.25, h=14.1, center = true, $fn=6);
			}
	}
}
nut();