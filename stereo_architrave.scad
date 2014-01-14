s = 0.36;
module ny_list(){
  difference(){
    linear_extrude(height = 26.5*3/s, convexity = 4)
      import("profile.dxf",layer="Layer_1");
  }
}
difference(){
  translate([0,0.1,-8]) scale(s) rotate([0,-90,0]) translate([0,-28.5,0]) ny_list();
  translate([-3.5*26.5,-1,26]) cube([4*26.5,20,20]);
  translate([-3*26.5-1,16,6.5]) rotate([0,90,0]) cylinder(r=5.5,h=3*26.5+2);
  // Midthull
  translate([-2*26.5,-1,-1]) cube([26.5,9+1,20]);
  // Senterhull
  translate([-2.5-21.5,-1,-1]) cube([21.5,9+1,20]);
  // Lengstborthull
  translate([-3*26.5+2.5,-1,-1]) cube([21.5,9+1,20]);
}
