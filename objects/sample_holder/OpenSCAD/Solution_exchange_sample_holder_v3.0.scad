// Holder for samples for auto_gradient system. Intended to hold a pcr tube cap. 
// Doug Juers 2025 Version 3.0 - square coverslips
// Can be printed without supports.
include <BOSL2-master/std.scad>
include <BOSL2-master/shapes3d.scad>
$fa=1;
$fs=.5;
//
// Main tunable parameters:
tubing_diameter=1.25;// Adjust depending on tube diameter to get tubing to be easy to push down;
// 1.25 is good for Warner PE-50 tubing with Bambulabs H2D printer
cover_buffer=1.5;//Extra distance out for tubing holes to allow for full cover to drop down (i.e. cover v3 without struts). 
pcrtube_thickness=.50;// Thickness of the walls of the pcr tube cap - impacts the positioning of the tubing guidance holes
coverslip_side=22.0;//Adjust depending on coverslip size
post_radius=1;// Adjust these to optimize fitting of the spacer which can be used to elevate the assembly to get greater magnification
post_height=1;
post_buffer=0.4;
//
// Other parameters
tolerance=0.01; //mm - to handle "z-fighting"
length=40;// 
height=25;//20 for big lid; 25 for potlid
width=30;
tubing_pillar_thickness=5;
tubing_pillar_height=16;//11 for biglid; 16 for potlid
tubing_pillar_gap=9;//4 for biglid; 9 for potlid
a=5;
groove_thickness=1.5;
lip_height=1.;
lip_length=1.5;
extra_height=3; //Extra height at bottom of plate above surface. 15 is pretty big = ~ 200 µm crystals rather small
total_height=height+extra_height;
window_diameter=18.6;
spacer_length=60-(17+10);
spacer_width=40;
spacer_height=17;

module whole(){
difference(){
union(){
//translate([length-24,width/2-3.5,10+extra_height])cube([14,7,1]);//Ridges for cover
difference(){
    translate([tolerance/2,tolerance/2,tolerance/2])cube([length-tolerance,height-tolerance,width-tolerance]);
    translate([length/2+tubing_pillar_thickness/2+1,height-tubing_pillar_height,0])cube([length,height,width]);//Remove left half
    translate([length/2+tubing_pillar_thickness/2,height-tubing_pillar_height,0])cube([length,tubing_pillar_height-2,width]);//Remove left half(bottom part)   
    translate([0,height-tubing_pillar_height,0])cube([length/2-tubing_pillar_thickness/2-1,height,width]);//Remove right half
    translate([0,height-tubing_pillar_height,0])cube([length/2-tubing_pillar_thickness/2,tubing_pillar_height-2,width]);//Remove right half (bottom part)

    translate([0,height-tubing_pillar_height,7,])cube([length,tubing_pillar_gap,width]);
    translate([0,height-tubing_pillar_height,16,])cube([length,height,width]);
    translate([0,height-tubing_pillar_height,15,])cube([length,tubing_pillar_height-2,width]);
    translate([length/2-9,0,14])cube([18,a+tolerance,width]);//Main opening
    translate([length/2-4,0,7])cube([8,a+tolerance,width]);//Main opening   
    translate([length/2-12,a,7])cube([24,groove_thickness+tolerance,width]);//Groove for coverslip
    translate([length/2-10,a+groove_thickness,7+lip_length])cube([20,lip_height+tolerance,width]);//Lip 
    translate([length/2-10,a+groove_thickness+lip_height,7])cube([20,height-tubing_pillar_height-a-groove_thickness-lip_height+tolerance,width]);//Buffer
    rotate([90,0,0])translate([length/2,7+tubing_diameter/2+lip_length+pcrtube_thickness+cover_buffer,-height])cylinder(h=10,d=tubing_diameter);
    rotate([90,0,0])translate([length/2,7+tubing_diameter/2+lip_length+pcrtube_thickness+cover_buffer+2.2,-height])cylinder(h=10,d=tubing_diameter);

//    translate([length/2-9,0,14])cube([18,height-tubing_pillar_height+tolerance,width]);

    //translate([0.7*length,0.25*height,0])cylinder(h=total_height,d=5);

    }

// The code below here tries to add stuff to the pillar to hold up the cover; still work in progress.    
//translate([length/2,10.5,3.])rotate([-90,90,0])prismoid(size1=[6,5], size2=[6,5.5], h=3.0);
//translate([length/2,10.5+3,3.])rotate([-90,90,0])prismoid(size1=[6,5.5], size2=[6,5], h=3.0);

}
     translate([5,0,5])rotate([-90,0,0])cylinder(h=post_height+post_buffer,r=post_radius+post_buffer);//This creates holes on the bottom for the spacer (another file) to fit into
      translate([length-5,0,5])rotate([-90,0,0])cylinder(h=post_height+post_buffer,r=post_radius+post_buffer);
     translate([5,0,width-5])rotate([-90,0,0])cylinder(h=post_height+post_buffer,r=post_radius+post_buffer);
     translate([length-5,0,width-5])rotate([-90,0,0])cylinder(h=post_height+post_buffer,r=post_radius+post_buffer);
}}
whole();
//translate([0,0,length-10])rotate([0,90,0])whole();
