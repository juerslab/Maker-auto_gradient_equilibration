// Cover (v3) for solution exchange sample holder
// Doug Juers October 2025
include <BOSL2-master/std.scad>
$fa=5;
$fs=0.1;
tolerance=0.01;
// All params can be adjusted. The first three will depend on the pcr cap dimensions
cover_diameter=6.0;// Adjust depending on PCR cap diameter
tubing_diameter=1.5;// Adjust to allow for cover to move more easily up and down. 1.5 works for Warner PE 10 tubing
pcrtube_thickness=0.5;// Adjust depending on pcr cap thickness; affects offset between cover wall and tubing holes
cover_depth=2;//Depth of cover; adjust depending on PCR cap height, and whether struts are being used. For the
// pcr tubes in the ActaF paper (Genesee Scientific 27-110), 1 mm is good for struts, and 2 mm for no struts
//
length=18;//Overall length
width=9;//Overall width
cover_thickness=2;
height=cover_thickness+cover_depth;//Height is limited by open space in the sample holder
gap1_width=5.4;//Open width between struts
//tubegap_width=1.2;// For cover v1
difference(){
    cube([length,width,height]);//Starting parallelpiped
     translate([9,(width-gap1_width)/2,-tolerance])cube([length,gap1_width,height+2*tolerance]);// This and the next line make the struts
    translate([9,0,-tolerance])cube([10,10,cover_depth+0.4]);

 //   translate([9,-tolerance,-tolerance])cube([length,width+2*tolerance,height+2*tolerance]);// Use this for without struts

    translate([5,width/2,0])cylinder(cover_depth*2,d=cover_diameter,center=true);//Main lid cavidy
    translate([5+cover_diameter/2-pcrtube_thickness-tubing_diameter/2,width/2,0])cylinder(10,d=tubing_diameter,center=true);//Tubing 1
    translate([5+cover_diameter/2-pcrtube_thickness-tubing_diameter/2-2.2,width/2,0])cylinder(10,d=tubing_diameter,center=true);//Tubing 2
 
//    translate([2,(width-tubegap_width)/2,0])cube([length,tubegap_width,height]);// For cover v1

}
