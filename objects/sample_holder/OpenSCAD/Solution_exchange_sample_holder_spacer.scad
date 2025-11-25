//Spacer for sample holder. Can be used to elevate sample holder, which increases the magniciation of the sample. Useful for smaller crystals. Can also be stacked.  
// Doug Juers 2025.
//
// Can be printed without supports.
//
$fa=1;
$fs=.5;
spacer_width=30;
spacer_length=40;
spacer_height=10;
hole_radius=5;
post_radius=1;
post_height=1;
buffer=0.4;
tolerance=0.01;

module whole(){
union(){
difference(){
    translate([tolerance/2,tolerance/2,tolerance/2])cube([spacer_width-tolerance,spacer_length-tolerance,spacer_height-tolerance]);
    translate([0,10,0,])cube([spacer_width-10,spacer_length-20,spacer_height]);// Remove central block
    //Make holes on bottom
//    translate([5,5,0])cylinder([post_radius+1,post_height+1]);
    translate([5,5,0])cylinder(h=post_height+buffer,r=post_radius+buffer);
    translate([spacer_width-5,5,0])cylinder(h=post_height+buffer,r=post_radius+buffer);
    translate([5,spacer_length-5,0])cylinder(h=post_height+buffer,r=post_radius+buffer);
    translate([spacer_width-5,spacer_length-5,0])cylinder(h=post_height+buffer,r=post_radius+buffer); 
}  
    //Make posts on top
    translate([5,5,spacer_height])cylinder(h=post_height+0.0,r=post_radius+0.0);
    translate([spacer_width-5,5,spacer_height])cylinder(h=post_height+0.0,r=post_radius+0.0);
    translate([5,spacer_length-5,spacer_height])cylinder(h=post_height+0.0,r=post_radius+0.0);
    translate([spacer_width-5,spacer_length-5,spacer_height])cylinder(h=post_height+0.0,r=post_radius+0.0);
}}
translate([spacer_length,0,spacer_width])rotate([-90,90,0])whole();
