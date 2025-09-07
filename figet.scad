 cylinder(h=10,r=3,$fn=100);
 cylinder(h=2,r=5,$fn=100);
 translate([0,0,8])
 cylinder(h=2,r=5,$fn=100);

dist_of_nub = 11;
dist_of_cutout = dist_of_nub + 7;
support_height = 3.5;

difference(){
for(i = [0:40]) {
translate ([i*1,0,0])
translate([-20,3,1.75])
cube([.5,40,support_height],center = true);

}
cylinder(h=4,r=5.5,$fn=100);
}
translate([0,0,4]){
difference(){    
    difference(){
        hull(){
 
             rotate([0,0,120])
               translate([0,dist_of_nub,0])
                 cylinder(h=2,r=10,$fn=100);

             rotate([0,0,240])
                 translate([0,dist_of_nub,0])
                     cylinder(h=2,r=10,$fn=100);
                
             rotate([0,0,360])
                 translate([0,dist_of_nub,0])
                      cylinder(h=2,r=10,$fn=100);
                
            }
            difference(){
                union(){
                 rotate([0,0,300])
                   translate([0,dist_of_cutout,0])
                     cylinder(h=2,r=10,$fn=100);
                
                 rotate([0,0,180])
                   translate([0,dist_of_cutout,0])
                     cylinder(h=2,r=10,$fn=100);
                    
                 rotate([0,0,420])
                   translate([0,dist_of_cutout,0])
                     cylinder(h=2,r=10,$fn=100);
                
                }
                }
            }
            cylinder(h=10,r=4,$fn=100);
            }
            }