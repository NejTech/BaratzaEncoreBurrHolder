$fa = 0.1;
$fs = 0.4;

difference() {

    union() {
        
        // horní pacičky
        // upper tabs
        translate([0,0,14])
        union() {
            rotate([0,0,45])
            translate([-2,-25,0])
            union() {
                translate([1,1,0])
                cube([2,2,2]);
                cube([4,2,5]);
                translate([0,0,3.5])
                rotate([45,0,0])
                cube([4,2,3]);
            }
            
            rotate([0,0,225])
            translate([-2,-25,0])
            union() {
                translate([1,1,0])
                cube([2,2,2]);
                cube([4,2,5]);
                translate([0,0,3.5])
                rotate([45,0,0])
                cube([4,2,3]);
            }
        }
        
        // horní část
        // top part
        translate([0,0,14])
        difference() {
            cylinder(r=22.5, h=4);
            translate([0,0,-0.05])
            cylinder(r=20, h=4.1);
        }
        
        // prostřední pacičky
        // middle tabs
        union() {
            translate([-28,-4.25,5.5])
            cube([3.5,8.5,1.4]);
            
            translate([16,-23.75,5.5])
            rotate([0,0,115])
            cube([3.5,8.5,1.4]);
            
            translate([11,26.25,5.5])
            rotate([0,0,240])
            cube([3.5,8.5,1.4]);
        }
        
        // prostřední část
        // middle part
        translate([0,0,12])
        difference() {
            cylinder(r=25.5, h=2);
            translate([0,0,-0.05])
            cylinder(r=20,h=2.1);
        }
        
        // zobáčky na mlecí kámen
        // millstone retaining tabs
        union() {
            translate([-3.75,24.5,6])
            rotate([90,0,0])
            prism(7.5, 2, 2.2);
            
            translate([3.75,-24.5,6])
            rotate([90,0,180])
            prism(7.5, 2, 2.2);
        }
        
        // spodní část
        // bottom parts
        difference() {
            cylinder(r=25.5, h=14);
            translate([0,0,-0.05])
            cylinder(r=24.5, h=14.1);
        }
        
        // příruba na mlecí kámen
        // millstone holders
        union() {
            translate([21.5,-3,0])
            cube([3,6,12.05]);
            
            translate([-24.5,-3,0])
            cube([3,6,12.05]);
        }
        
        // postranní příruby na mlecí kámen
        // side millstone holders
        union() {
            translate([21.5,-12,12])
            rotate([0,90,0])
            prism(3,4,2);
            
            translate([21.5,12,9])
            rotate([0,-90,180])
            prism(3,4,2);
            
            translate([-21.5,12,12])
            rotate([0,90,180])
            prism(3,4,2);
            
            translate([-21.5,-12,9])
            rotate([0,-90,0])
            prism(3,4,2);
        }
    }
    
    
    // výřezy
    // cutouts
    union() {
        // západka na mlecí kámen
        // millstone retaining tab cutout
        translate([-4.5,-26.5,-0.05])
        union() {
            cube([9,3,6]);
            translate([0,0,5.95])
            cube([0.75,3,5]);
            translate([8.25,0,5.95])
            cube([0.75,3,5]);
        }
        
        translate([-4.5,23.5,-0.05])
        union() {
            cube([9,3,6]);
            translate([0,0,5.95])
            cube([0.75,3,5]);
            translate([8.25,0,5.95])
            cube([0.75,3,5]);
        }
        
        // postranní výřezy na zásobník zrn
        // top cutouts
        translate([-25.5,-1.5,7])
        cube([2,3,7.05]);
        
        translate([23.5,-1.5,7])
        cube([2,3,7.05]);
    }
}

// https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Primitive_Solids
module prism(l, w, h){
   polyhedron(
    points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
    faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]);
}
