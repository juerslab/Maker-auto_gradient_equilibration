# Title: Exp08 Auto serial equilibration testing
# Date: 2024-12-06 (notes date; exps from 2022)
# Goals: To develop and test use of the auto serial equilibration system

# Initial Testing in 2022
Thurs, March 25, 2022

Have been working on the poseidon controller the last couple weeks - 
improving the linear option originally written by Sean Stothers.

Today successfully equilibrated a large ~ 1000 x 300 x 100 microns to 25% glycerol using
this device.

Params.

Crystal from tray alpha-lact.13; transferred to a starting solution of 20% P8K, 50 mM KH2PO4 
in a clear pcr tube cap with starting volume of 40 µL. 

The Linear Concentration Gradient option was used to exchange it to the same buffer with 25% glycerol over 50 minutes. 
Photos were taken before each injection. 
Params: Starting conc: 0; Target conc: 9 M; Syringe conc: 10 M; Ratio: 0.5; Injections: ?

and then, over 5 min: 
Params: Starting conc: 0; Target conc: 9 M; Syringe conc: 10 M; Ratio: 0.5; Injections: ?

(Photos are on the raspberry pi that runs the syringe pumps.)

This crystal was then mounted on the diffractometer using the RH Cube at 75% RH/8 LPM and 
a data set was collected. The data started dying after a few hours. 

The next morning, the crystal looked visibly in good condition, seeming like it hadn't dried out.
I demounted the crystal into the glycerol buffer, and it suffered a couple cracks, but 
nothing dramatic.

Fri, March 26, 2022

Now try a similar experiment using 25% xylose rather than 25% glycerol.
This crystal dissolved fairly quickly - possibly b/c I used 18% PEG/low salr rather than 20% PEG, 
and also maybe b/c the xylose/PEG was very old, so degraded? (I couldn't find any xylose powder, but
found this old solution, that I tried.)

So now try with 25% mpd, using the same starting solution as yesterday. 
This was a fail, because the inject tubing wasn't contacting the solution.

Try dumping xtal into the solution - cracked - image 2022-03-25 11_17-_59.png
Try again as above - 50 minute experiment. 

This again failed - as if the injection pump was pushing a smaller volume than the extraction pump. 
Could this be a viscosity differential? Evaporation?

Mon, March 28, 2022

Tried a couple tests w/o crystals. Didn't see the problem from Friday. 

Tue, March 29, 2022

Try again w/ crystals. It worked this time. Crystals equilibrated nicely in 30 minutes.
Dumping a crystal into this solution (20% P8K, 50 mM salt, 25% mpd) caused lots of cracking.
See photo 2022-03-25 11_01_40, which shows a larger crystal cluster that was slowly equilibrated
vs smaller dumped crystal.

Thu, April 7, 2022

Equil xtal.
aLact.A2 crystal
Start: 20% P8K, 50 mM Salt; 40 µL) -photos on Pi and M205C
Ramp: 30 minutes to 0.9 x (above + 25% mpd). This failed - crystal was cracked after equilibration.

Try again:
aLact.A2 crystal
Start: 20% P8K, 50 mM Salt; 40 µL) -photos on Pi and M205C
Ramp: 50 minutes to 0.9 x (above + 25% mpd). This failed - crystal was cracked after equilibration.

Another try failed b/c the injection syring ran out of solution.

Another try succeeded. 50 minutes to 0.9 x(above + 25% mpd), 5 minutes to 0.99 x (above + 25% mpd). See photos on 
M205C and Pi

Fri, April 8, 2022
Now as above but with 25% glycerol as target. Failed - cracked a lot after a few min.

Try again with 25% glycerol. 50 min to 0.9 x 25%. This worked. Photos on Pi but not M205C.

Tue, April 12, 2022

Try again with 25% glycerol. 50 min to 0.9 x 25%. This worked for one crystal. Photos on Pi and M205C.
There were, however, problems with overflowage - possibly from capillary action between the wall of the 
pcr tube top and the jig used to hold the tubes.

Fri, April 15, 2022
Made a new jig that attempts to get rid of capillary overflowage.
Tried again with glycerol, but lost the crystal in the outflow tube when manually trying 
to reduce the volume after using the wrong pump for the outflow. However, the new jig seems 
to work well in preventing capillary overflowage.

Sat, April 16 2022
Try again with glycerol. 25%. 30 min to 0.9 x 25%. 

Thu, June 9, 2022
Crystals: Hex TLN
Starting solution: 2 M AmSO4/ 40 µL
Target solution: water
30 min to 0.05 M; failed (bread slicing) at about 20 minutes. Try again with slower gradient, 
or maybe with the input at the bottom of the cap, since the density of water is less than 2 M
AmS)4.

Starting solution: 2 M AmSO4/ 40 µL
Crystals: Hex TLN
Target solution: water
30 min to 0.05 M; repeat for 10 min so to ~ pure water.
Input at bottom of well; outflow at mid-height.
This also failed. 
Possibly these crystals aren't stable in water b/c they're so new? Check tomorrow.

Fri, June 10, 2022
Crystals: Hex TLN; Tray 63; well A8
Target solution: water
30 min to 0.05 M; 10 min to 0.01 M
Input at bottom of well; outflow at mid-height.
- Rule of thumb could be to place input height 
This worked! 

Crystals: Tet HEWL; Tray 16; well A6
Target solution: 7% NaCl, 25% Glycerol, 20 mM NaOAc 5.2
15 min to 24%; worked; no photo

Mon, June 12, 2022
Crystals: Tet HEWL; Tray 16, well B6 (6% NaCl)
Target solution: 3% NaCl, 20 mM NaOAc 5.2
30 min (1950 s) to 3%; no internal cracks, but some surface degradation

Crystals: Tet HEWL; Tray 16, well A3 (4.2% NaCl)
Target solution: 3% NaCl, 20 mM NaOAc 5.2
30 min (1950 s) to 3.1%; this worked, but crystals dumped into this solution didn't crack.
So go back to glycerol equilibrations...


Crystals: Tet HEWL; Tray 16; well C6
Target solution: 7% NaCl, 25% Glycerol, 20 mM NaOAc 5.2
30 min to 24% glycerol; worked; no photo, but crystals dumped into this solution didn't crack.
Weird...

Crystals: Tet HEWL; Tray 16, well D6 (6% NaCl)
Target solution: 3% NaCl, 20 mM NaOAc 5.2
30 min (1950 s) to 3.5%;
15 min to 3.05

Tue, June 14, 2022
Crystals: Hex TLN; Tray 63; well C5
Target solution: water
30 min to 0.05 M; 15 min to 0.01 M
Input at bottom of well; outflow at mid-height.
Worked very nice. Many crystal equilibrated to water.

Wed, June 15, 2022
Crystal

Crystals: aLact.15.A4
Start: 20% P8K, 50 mM Salt; 40 µL) -photos on Pi and M205C
Ramp: 50 minutes to above + 24% glycerol). 
Succeded, but xtal was somewhat poor looking from the start.

Crystals: aLact.13.B3
Start: mostly well solution, but some of the above (20% P8K, 50 mM salt), which caused cracking.
Need to start with well solution!!!!  -photos on Pi and M205C
Ramp: 80 minutes to above + 24% glycerol). 
Succeded, but xtal was somewhat poor looking from the start.

Thu, June 16, 2022
Crystals: aLact.13.C4
Start: mwell solution; this worked
Ramp: 50 minutes to above + 24% glycerol). 
One crack, probably caused by initial drop of glycerol from the tube into the well.
Otherwise succeeded. 

Crystals: aLact.13.C4
Start: mwell solution; this worked
Ramp: 50 minutes to above + 24% glycerol). Tried repositioning
This also had a longitudinal crack.

Wed, June 29, 2022 (I think)
Crystals: aLact.16.c3
Start: well solution:
Ramp1: 50 min to 96% of {19.5% P8K, 50 mM salt, 25% glycerol}
Tried the following :
a. Instead of positioning input tube directly above crystal, positioning above and offset
b. Start with a small air pocket in the tube to prevent drop of the higher density liquid
Seems good.
Ramp2: 15 min to 99.6% of {19.5% P8K, 50 mM salt, 25% glycerol}
Still good. 
Photos on Pi & M205C. 

Thu, June 30, 2022
Crystals: aLact.16.c4
Start: well solution:
Ramp1: 50 min to 96% of {19.5% P8K, 50 mM salt, 25% glycerol}
Tried the following :
a. Instead of positioning input tube directly above crystal, positioning above and offset
b. Start with a small air pocket in the tube to prevent drop of the higher density liquid
Seems good; maybe a little dissolved.
Photos on Pi & M205C. 

Fri, July 1, 2022
Crystals: lyz.17.c6
Start: well solution (8% NaCl)
Ramp: 1225 sec to 3.1 % NaCl
This worked, but there was some surface degradation and cracking of some of the crystals.
Possibly try a less steep gradient.

Crystals: lyz.17.D6
Start: well solution (8% NaCl)
Ramp: 2400 sec to 3.1 % NaCl
Worked. Photos on M205C.

Crystals: aLact.16.A4
Start: well solution:
Ramp1: 40 min to 96% of {20% P8K, 50 mM salt, 25% mpd}
Worked. Photos on M205C.

Crystals: aLact.16.B6
Start: well solution:
Ramp1: 40 min to 96% of {20% P8K, 50 mM salt, 25% mpd}
Worked. Photos on M205C

2025-02-11  
Something happened with the SD card on the Raspberry Pi, and I had to restart from the beginning.
1. Install Raspian on SD card. 
2. Install opencv (takes a while):
https://raspberrypi-guide.github.io/programming/install-opencv
3. Make sure calibration.txt is present. Probably should make it possible for it not to be there...\

# Paper revisions. Manuscript was submitted to Acta F. The reviewers have said the following:
Reviewer 1:
4. As mentioned in the discussion, the crystals in the gradient equilibration solution may have defects
not observed by eyes. Could the authors test the crystals with X-ray beam and compare with bad crystals? Could
the authors solve the structure to compare with reported structures?
5. It may be important to keep the humidity while changing crystal solution, could the authors design
and make a small piece of cover to protect the reservoir? And test if it helps to obtain high-quality crystals?
Reviewer 2:
Additional Data: Including X-ray diffraction data for crystals treated using different soaking methods would greatly
strengthen the manuscript. This comparison would provide quantitative evidence of the benefits of the new setup.

So I will do the following:
To address, "Could the authors solve the structure to compare with reported structures?" - 
- collect data and determine structures on long equilibrated crystals 
- compare to data collected on not-equilibrated crystals
To address, "Could the authors test the crystals with X-ray beam and compare with bad crystals?" and "Including X-ray diffraction data for crystals treated using different soaking methods would greatly
strengthen the manuscript. This comparison would provide quantitative evidence of the benefits of the new setup.", I will try a soaking time series, and measure diffraction to get mosaicities and diffraction limit (?)
To address, "It may be important to keep the humidity while changing crystal solution, could the authors design and make a small piece of cover to protect the reservoir? And test if it helps to obtain high-quality crystals?" 


2025-05-02.

Note that all of the crystals here were mounted with micromeshes.

## First tests using microRT/capillary  
#### Alpha-lactalbumin
1. Alpha-act equilibrated over 45 min
Equilibrating alpha-lactalbumin xtal using auto_equil device with PCR cap
Crystals: aLact.19.D6
Start: well solution (40 μL)
Gradient: 2700 sec to 95% of ML of 20% P8K, 25% glycerol, 50 mM KH2PO4. 
Crystals look ok. Solution withdrawal didn't work great. Final volume greater than 40 μL
Note ML = 20% P8K, 25% glycerol, 50 mM KH2PO4

##### Diffraction exp_2568 (directory lactalbumin)
- using crystal from above equilibration; mounted right after equilibration
- well alact.19.D6
- 600x400x100 μm^3
- ~ 10 μL ML added to cap
- crystal mounted in on mesh in microRT tube against ML
- diffracts to ~ 3.1 A
- collect dataset (orthorhombic - mmm); 0.5 degrees 45 seconds
- the data set went to about 2.5 angstroms
- cell 71.8 104.1 117.7 

2. Alpha-lact not equilibrated

##### Diffraction exp_2574
- well alact.19.D6
- 600x400x100 μm^3
- crystal mounted on mesh in microRT tube against well solution
- diffracts about as well as the above crystal
- collect data set (orthorhombic)
- crystal dies (dries out?) sooner than the above crystal; didn't get a complete data set to 2.5 A.
	- Visible change in diffraction about frame 15
		- before: 68.5 101.4 114.7 (796694)
		- after: 57.8 74.2 89.71 (384620), which is less than half of the above...possibly indicate some drying out
- this reminds me of previous difficulties with alpha-lactalbumin RT data collections, in which the crystal didn't last very long even in a microRT tube. So next time I should probably try to mount against water or in a capillary. Or maybe I already have a RT data set that I can use as comparison. Need to check notebook.
	- After checking notebook, Yes, crystals mounted in microRT tubes usually died or underwent some change about 98% RH.
	- So I try mounting a crystal in a capillary.

##### Diffraction exp_2575
- well alact.19.D6
- 600 x 400 x 100 μm^3
- capillary mount against well solution; fairly wet
- diffracts about as well as the above 2 crystals
- collect ds
- cell 72.0 104.8 117.4

2025-05-04. 
Using RH flow for RT mounts. Estimate 75% glycerol to be 0.92 mol fraction water. So use 92%

## RH flow measurements - pre exp 2x2 or 5x5 only
Here to increase throughput, I use RH flow rather than microRT/capillaries 
 
### Pre exp 2x2

##### Diffraction exp_2576
- crystal from 05-02 soak.
- about 600 x 400 x 100
- mounted in micromesh in humid flow at 92%
- diffracts as good or better than exp_2568 crystal
- full ds 0.5 degrees/45 seconds
- cell 72.5 105.4 118.5
2025-05-05. 

##### Diffraction exp_2577
- same xtal as yesterday, was sitting at 92% RH overnight
- still diffracts ok
- pre-exp cell 72.1 104.7 118.1	

##### Diffraction exp_2578
- xtal from alact.19.D6
- about 500 x 400 x 100 
- 1 step into ML - lots of cracking
- mounted in humid flow 92% RH
- poor diffraction 
- pre-exp 2x2 - 8 72 118

##### Diffraction exp_2579 
- same xtal as 2578 but with pre-exp 10x10
- cell 72 10 117 90 90 90
- mosaicity 0.72 0.56 1.17

##### Diffraction exp_2581
- well alact.19.B5
- 500 x 300 x 100
- 15 min gradient equil to ML, then dumped into cryosolution
- 1 crystal cracked (just below the inflow tube); others (not below the inflow tube) didn't crack. this it the one that cracked.
- pre-exp 2x2
- spots beyond 3
- cell 72.4 105.0 118.1
- mos 0.59 0.58 0.85

##### Diffraction exp_2582
- as above but one of the xtals that didn't crack; maybe some cracking when dumping
- 500 x 300 x 100
- pre-exp 2x2
- cell 72.2 105.0 118.1
- mos 0.59 0.59 0.79

##### Diffraction exp_2583
- as exp_2582 - one of the ones that didn't crack (oops mounted directly from gradient solution)
- 400 x 200 x 100
- pre-exp 2x2
- 72.0 104.6 117.7
- mos 0.56 0.56 0.75

##### Diffraction exp_2584
- as above but one of the xtals that didn't crack
- 400x200x100
- pre-exp 2x2
- cell 
- mos 

summary for 15 minute gradient: (these are all from pre-experiments 2x2, 0.5 degrees, 45")
exp # 	| size 			| cell 				| mosaicity 		| res	| visible spots	|
------	|--------------	|------------------	|---------------	|------	|-------------	|
2581	| 500x300x100	| 72.4 105.0 118.1	| 0.59 0.58 0.85	| 3.9	|	2.7			|
2582	| 500x300x100	| 72.2 105.0 118.1	| 0.59 0.59 0.79	| 3.4	|	2.5			|
2583	| 400x200x100	| 72.0 104.6 117.7	| 0.56 0.56 0.75	| 3.9	|	2.8			|
2584	| 400x200x100	| 72.2 104.8 117.9	| 0.50 0.52 0.67	| 5.1	|	2.7			|

Now do a 45 minute gradient equil to ML on crystals from well alact.19.D5. 
exp # 	| size 			| cell 				| mosaicity 		| res	| visible spots	|
------	|--------------	|------------------	|---------------	|------	|---------------|
2585	| 400x200x100	| 72.2 104.9 118.0	| 0.57 0.55 0.80 	| 3.5 	| 2.6   		|
2586	| 400x200x100	| 72.1 105.0 118.1	| 0.57 0.58 0.60 	| 5.0	| 2.8 			|
2587	| 400x200x100	| 72.3 104.8 118.0  | 0.55 0.55 0.73    | 3.6   | 2.5			|	
2588	| 600x200x100	| 72.2 104.8 118.0  | 0.55 0.54 0.70    | 3.7   | 2.7   		|

Now do a 5 minute gradient equil to ML on crystals from well alact.20.B5
exp # 	| size 			| cell 				| mosaicity 		| res	| visible spots	|
------	|--------------	|------------------	|---------------	|------	|---------------|
2589	| 600x400x100	| 72.2 104.9 118.0	| 0.59 0.58 0.83 	| 3.5 	| 2.8  			|
2590	| 600x200x100	| 72.2 105.0 118.0 	| 0.60 0.56 0.67 	| 3.7	| 2.6			|
2591	| 400x200x100	| 72.3 105.0 118.1  | 0.59 0.59 0.82    | 3.8   | 2.7			|	
2592	| 400x100x100	| 72.2 104.9 117.9  | 0.59 0.58 0.90    | 4.9   | 2.8   		|

Now do a dunks into ML on crystals from well alact.20.B5
These all are extremely cracked with very poor diffraction. 

exp # 	| size 			| cell 				| mosaicity 		| res	| visible spots	|
------	|--------------	|------------------	|---------------	|------	|---------------|
2593	| 800x400x100	| 72.2 104.4 117.2	| 0.70 0.65 1.46 	| 5.2 	| 3.3  			|
2594	| 600x200x100	| ?				 	| 0.76 0.57 1.30 	| 4.8	| 3.4			|
2596	| 500x300x100   | 59 73 104			| 0.70 0.55 1.11    | 7.25  | 3.6			|
2600	|

Tried 1 minute soaks, but the gradient software couldn't handle it. 

One curious thing is that the other 45 minute experiments had lower mosaicity. Compare pre-exp mosaicity to actual experiment mosaicity:
exp		|	pre-exp mos		| exp mos			|	comments	|
-------	|-------------------|-------------------|---------------|
2568	| 0.56 0.58 0.79	| 0.59 0.57 0.65	| microRT & ML	|
2574	| 0.56 0.54 0.79 	| ?					| microRT & well|
2575	| ? (1 frame)		| 0.58 0.56 0.60 	| cap & well	|
2576	| ? (3 frames)		| 0.59 0.59 0.60	| RH flow & ML	|

To do when I get back from visiting Dad.
1. Grow crystals of thermolysin
2. Finish the above - more dunks. Possibly 1 minute soaks.
3. Get data on lysozyme and thermolysin

2025-05-12

===============
note all pre-exp exposures are 0.5 degrees 20 seconds

##### Diffraction exp_2595
- crystal dumped into ML w/loop; cracks a lot & breaks into smaller cracked chunks when mounting
- pre-exp 2x2 - got small cell & weird e3 of 0.16; so try more exposures

##### Diffraction exp_2596
- same crystal as above but 5x5 oscillations
- pre-exp analysis: 19%; 60/72/104; 0.70/0.55/1.11
- auto-analysis fails b/c of nobs<3 for one frame

##### Diffraction exp_2597
- same crystal as above but 10x10 oscillations
- pre-exp analysis: 36%; 72/107/118; 0.68/0.60/0.90 (But processing failed midway through the 2nd run)
- full auto warning b/c of nobs<3, but we get 71/107/119; 0.66 0.57 2.12

===============

##### Diffraction exp_2599
- crystal dumped into ML w/ pipettor; cracks a lot...; holds together better than the above when mounting
- very poor diffraction
- 600x500x150 microns
- pre-exp 2x2; poor results...

##### Diffraction exp_2600
- same as above but pre-exp 5x5
- very poor diffraction
- 5%; 7/8/75; 0.69/0.60/0.90

##### Diffraction exp_2601
- same as above but pre-exp 10x10
- pre-exp analysis: 0.57/0.48/0.34
- full auto: 74/102/117 0.77/0.53/3.57

-------------------

#### Lysozyme
ML = 3% NaCl, 20 mM NaOAc pH 5.2.
3% NaCl is about 30/58 = 0.5 M -> 98% RH target

##### Diffraction exp_2602
- DJ.lyz.32.B6 (8% NaCl); RH flow 94%
- 400x400x100
- crystal dumped into ML; small cracks along c-axis
- pre-exp 2x2; 53% 78.8/79.1/38.0; mos 0.57/0.61/0.64
- diff lim 

##### Diffraction exp_2603
Same xtal as above, but 5x5
- 99%; 78.9/78.8/38.0; 0.56/0.60/0.72; diff lim 2.10

##### Diffraction exp_2604
- DJ.lyz.32.B6 (8% NaCl); RH flow 95%
- 400x400x100
- crystal dumped into ML; small cracks along c-axis & 1 larger random crack
- pre-exp 5x5; 84%; 79.0/78.9/38.0; 0.59/0.59/0.63

##### Diffraction exp_2605
- DJ.lyz.32.B6 (8% NaCl); RH flow 95%
- 300x300x100
- crystal dumped into ML; some cracks
- pre-exp 5x5; 97%; 78.9/79.0/38.0; 0.64/0.62/0.83

##### Diffraction exp_2606
- DJ.lyz.32.B6 (8% NaCl); RH flow 95%
- 300x300x100
- crystal dumped into ML; no cracks (?)
- pre-exp 5x5; 98%; 79.0/79.0/38.0; 0.58/0.59/0.70; diff lim > 2.0

======
5 minute gradient equilibration from well solution (8% NaCl) to 95% of 3% NaCl

##### Diffraction exp_2607
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 300x300x100
- 10' gradient equil to ML; no cracks (?)
- pre-exp 5x5; 99%; 79.0/79.0/38.0; 0.58/0.61/0.66; diff lim > 2.0

##### Diffraction exp_2608
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 200x200x150
- 10' gradient equil to ML; no cracks (?)
- pre-exp 5x5; 99%; 79.0/79.0/38.0; 0.58/0.60/0.67; diff lim > 2.0

##### Diffraction exp_2609
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 200x200x150
- 10' gradient equil to ML; no cracks from soak, but possibly a satellite xtal in one quadrant
- pre-exp 5x5; 99%; 79.0/79.0/38.2; 0.59/0.60/0.68; diff lim > 2.0

##### Diffraction exp_2610
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 300x300x100
- 10' gradient equil to ML; no cracks from soak, but possibly a satellite xtal in one quadrant
- pre-exp 5x5; 99%; 79.0/79.0/38.0; 0.59/0.61/0.62; diff lim > 2.0


So we get a slightly smaller mosaicity with the gradient, despite the cracking with dumping. I will try lower NaCl, so see if we get higher mosaicities.

2% NaCl

##### Diffraction exp_2611
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 300x300x100
- dumped into 2% NaCl
- pre-exp 5x5; 99%; 79.0/79.0/38.0; 0.59/0.61/0.61; diff lim > 2.0

Hmmm. Diffracts even better..

I think I made ML incorrectly at 500 mM NaOAc 5.2 rather than 20 mM. This would help to offset the change in salt, and result in less cracking...

Remade ML at 3% NaCl

##### Diffraction exp_2612
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 300x300x100
- dumped into 3% NaCl; lots more cracking than above...
- pre-exp 2x2; 99%; 79.2/79.2/38.0; 0.57/0.61/0.80; diff lim > 2.0
- still diffracts pretty well. No real spot splitting as one might imagine given how damaged the crystal looks.

##### Diffraction exp_2613
- same xtal as exp_2612
- pre-exp 5x5; 99%; 79.2/79.1/38.0; 0.58/0.60/0.67; diff lim > 2.0

##### Diffraction exp_2614
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 300x200x150
- dumped into 3% NaCl; lots of cracking perp to c
- pre-exp 2x2; 99%; 79.1/79.1/37.9; 0.56/0.60/0.76; diff lim > 2.0

##### Diffraction exp_2615
- same xtal as exp_2614
- pre-exp 5x5; 99%; 79.1/79.1/38.0; 0.58/0.60/0.70; diff lim > 2.0

##### Diffraction exp_2616
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 300x200x150
- dumped into 2% NaCl; lots of cracking perp to c
- pre-exp 2x2; 79.1/79.1/38.0 0.57/0.61/0.70 diff lim > 2.0

##### Diffraction exp_2617
- same xtal as exp_2616
- pre-exp 5x5; 96%; 79.1/79.1/38.0 0.58/0.61/0.84; diff lim > 2.0


Interesting that these crystals, even though rather cracked, have relatively low mosaicities. 

I will try to pre-equil to high salt first, to get worse cracking and hopefully higher mosaicity. 

##### Diffraction exp_2616
- DJ.lyz.32.B6 (8% NaCl); RH flow 96%
- 300x200x150
- dumped into 12 % NaCl for 2', then to 3% NaCl for 2'; lots of cracking perp to c when going to 3%
- pre-exp 2x2; 95%; 79.2/79.1/38.0 0.56/0.59/0.69 diff lim > 2.0

2025-05-13. 

Looking at Lopez-Jaramillo et al, they saw modest mosaicity increases, and usually going from lower to higher salt. So I could try that. But I think I'll finish the measurements of 8%->3% and report whatever I find. The story appears to be something like 

"Although lysozyme crystals experience lots of cracking, the mosaicitiy isn't affected enough to have a large impact on the data quality. For alpha-lactalbumin, however, the cracking prevents collection of good data, and even getting a unit cell in some cases."

##### Diffraction exp_2619
- DJ.lyz.32.C6 (8% NaCl); RH flow 97%
- 300x300x100
- dumped into 3% NaCl; lots of cracking perp to c
- pre-exp 2x2; 97%; 79.2/79.2/38.0; 0.56/0.61/0.77; diff lim > 2.0

##### Diffraction exp_2620
- same xtal as 2619
- pre-exp 5x5; 98%; 79.1/79.1/38.0; 0.56/0.56/0.67; diff lim > 2.0

##### Diffraction exp_2621
- DJ.lyz.32.C6 (8% NaCl); RH flow 97%
- 400x400x100
- dumped into 3% NaCl; lots of cracking perp to c
- pre-exp 2x2; 81%; 79.1/79.1/37.9; 0.56/0.58/0.86; diff lim > 2.0

##### Diffraction exp_2622
- same xtal as 2621
- pre-exp 5x5; 97%; 79.2/79.2/38.0; 0.59/0.59/0.81; diff lim > 2.0

##### Diffraction exp_2623
- same xtal as 2621
- pre-exp 5x5; 90%; 79.2/79.2/37.9; 0.56/0.61/0.76; diff lim > 2.0

Dumps into 3% NaCl

exp # 	| size 			| cell 				| 2x2 mosaicity 	| 5x5 mosaicity	 |
------	|--------------	|------------------	|---------------	|----------------|
2612/13	| 300x300x100	| 79.2/79.2/38.0	| 0.57/0.61/0.80 	| 0.58/0.60/0.67 |
2614/15	| 300x300x150	| 79.1/79.1/37.9 	| 0.56/0.60/0.76 	| 0.58/0.60/0.70 |
2619/20	| 300x300x100   | 79.2/79.2/38.0	| 0.56/0.61/0.77    | 0.58/0.60/0.67 |
2621/22	| 400x400x100	| 79.2/79.2/38.0	| 0.56/0.58/0.86	| 0.59/0.59/0.81


Now 15 minute gradient equilibration to 3% NaCl
These crystals don't have the same cracks as dumping, but do look a little ragged.

##### Diffraction exp_2625
- DJ.lyz.32.C6
- 400x300x100
- 15' gradient equil to 3% NaCl
- 96.8% RH 8 LPM
- pre-exp 2x2; 72%; 79.2/79.1/38.0; 0.58/0.58/0.77; diff lim > 2.0

##### Diffraction exp_2626
- DJ.lyz.32.C6
- 300x300x150
- 15' gradient equil to 3% NaCl
- 96.8% RH 8 LPM
- pre-exp 2x2; 98%; 79.1/79.1/38.0; 0.58/0.59/0.79; diff lim > 2.0

##### Diffraction exp_2627
- DJ.lyz.32.C6
- 300x300x200
- 15' gradient equil to 3% NaCl
- 96.8% RH 8 LPM
- pre-exp 2x2; 96%; 79.1/79.1/38.0; 0.58/0.61/0.78; diff lim > 2.0

##### Diffraction exp_2628
- DJ.lyz.32.C6
- 300x300x300
- 15' gradient equil to 3% NaCl
- 96.8% RH 8 LPM
- pre-exp 2x2; 95%; 79.1/79.1/38.0; 0.58/0.60/0.74; diff lim > 2.0

15' gradient equil 3% NaCl

exp # 	| size 			| cell 				| 2x2 mosaicity 	| 
------	|--------------	|------------------	|---------------	|
2625	| 400x300x100	| 79.2/79.1/38.0	| 0.58/0.58/0.77 	| 
2626	| 300x300x150	| 79.1/79.1/37.9 	| 0.56/0.59/0.79 	| 
2627	| 300x300x200   | 79.1/79.1/38.0	| 0.56/0.61/0.78    | 
2628	| 300x400x300	| 79.1/79.1/38.0	| 0.56/0.60/0.74	| 

Now 40 minute gradient equilibration to 3% NaCl
These crystals don't have the same cracks as dumping but are showing some surface degradation.

##### Diffraction exp_2629
- DJ.lyz.32.C6
- 300x300x200
- 40' gradient equil to 3% NaCl
- 96.8% RH 8 LPM
- pre-exp 2x2; 98%; 79.2/79.1/38.0; 0.56/0.59/0.73; diff lim > 2.0

##### Diffraction exp_2630
- DJ.lyz.32.C6
- 300x300x200
- 40' gradient equil to 3% NaCl
- 96.8% RH 8 LPM
- pre-exp 2x2; 98%; 79.2/79.1/38.0; 0.56/0.61/0.75; diff lim > 2.0

##### Diffraction exp_2631
- DJ.lyz.32.C6
- 200x200x100
- 40' gradient equil to 3% NaCl
- 96.8% RH 8 LPM
- pre-exp 2x2; 97%; 79.2/79.1/38.0; 0.56/0.59/0.79; diff lim > 2.0

##### Diffraction exp_2633
- DJ.lyz.32.C6
- 300x300x300
- 40' gradient equil to 3% NaCl
- 96.8% RH 8 LPM
- pre-exp 2x2; 95%; 79.1/79.1/38.0; 0.57/0.61/0.82; diff lim > 2.0


40' gradient equil 3% NaCl

exp # 	| size 			| cell 				| 2x2 mosaicity 	|
------	|--------------	|------------------	|---------------	|
2629	| 300x300x200	| 79.2/79.1/38.0	| 0.56/0.59/0.73 	|
2630	| 300x300x200	| 79.2/79.1/37.9 	| 0.56/0.61/0.75 	|
2631	| 200x200x100   | 79.2/79.1/38.0	| 0.56/0.61/0.79    |
2632	| 300x300x100	| 79.2/79.2/38.0	| 0.56/0.58/0.82	|
2633	| 300x300x100	| 79.2/79.2/38.0	| 0.56/0.61/0.76	|


Now mount some directly from well (8% NaCl)

##### Diffraction exp_2634
- DJ.lyz.32.C6 (8% NaCl)
- 300x300x200
- direct from well
- mount was rather dry from blotting...
- 96.8% RH 8 LPM
- pre-exp 2x2; 95%; 79.2/79.2/38.0; 0.56/0.61/0.80; diff lim > 2.0

##### Diffraction exp_2635
- DJ.lyz.32.C6 (8% NaCl)
- 300x300x200
- direct from well
- 96.8% RH 8 LPM
- pre-exp 2x2; 88%; 79.2/79.2/38.0; 0.56/0.59/0.80; diff lim > 2.0

##### Diffraction exp_2636
- DJ.lyz.32.C6 (8% NaCl)
- 350x350x150
- direct from well
- 96.8% RH 8 LPM
- pre-exp 2x2; 88%; 79.2/79.2/38.0; 0.56/0.61/0.76; diff lim > 2.0

##### Diffraction exp_2637
- DJ.lyz.32.D6 (8% NaCl)
- 250x250x150
- direct from well - from liquid-vapor surface
- 96.8% RH 8 LPM
- pre-exp 2x2; 88%; 79.2/79.2/37.9; 0.56/0.59/0.71; diff lim > 2.0
** Note - all (most) of the other crystals had to be released from the plastic surface of the well. This one was growing on the liquid-vapor interface and was just lifted off - so maybe less trauma.**

##### Diffraction exp_2638
- DJ.lyz.32.D6 (8% NaCl)
- 250x250x150
- direct from well - released from plastic easily
- 96.8% RH 8 LPM
- pre-exp 2x2; 88%; 79.1/79.2/37.9; 0.56/0.60/0.71; diff lim > 2.0

##### Diffraction exp_2639
- DJ.lyz.32.D6 (8% NaCl)
- 300x300x150
- direct from well
- 96.8% RH 8 LPM
- pre-exp 2x2; 88%; 79.2/79.2/37.9; 0.56/0.61/0.78; diff lim > 2.0
** This one was kind of a tough mount. Released from plastic & then chased around.**

##### Diffraction exp_2640
- DJ.lyz.32.D6 (8% NaCl)
- 250x250x150
- direct from well - from liquid-vapor surface
- 96.8% RH 8 LPM
- pre-exp 2x2; 88%; 79.1/79.2/37.9; 0.55/0.59/0.76; diff lim > 2.0


direct from well (8% NaCl)

exp # 	| size 			| cell 				| 2x2 mosaicity 	|
------	|--------------	|------------------	|---------------	|
2634	| 300x300x200	| 79.2/79.2/38.0	| 0.56/0.61/0.80 	|
2635	| 300x300x200	| 79.2/79.2/37.9 	| 0.56/0.59/0.80 	|
2636	| 350x350x150   | 79.2/79.1/37.9	| 0.56/0.61/0.76    |
2637	| 250x250x150	| 79.1/79.2/37.9	| 0.56/0.59/0.71	|
2638	| 250x250x100	| 79.2/79.2/37.9	| 0.56/0.60/0.71	|
2639	| 300x300x150	| 79.2/79.2/37.9	| 0.56/0.61/0.78	|
2640	| 250x250x150	| 79.1/79.2/37.9	| 0.55/0.59/0.76	|

Direct from well (3% NaCl)

##### Diffraction exp_2641
- DJ.lyz.32.A1 (3% NaCl)
- 350x350x350
- direct from well - from liquid-vapor surface
- 96.8% RH 8 LPM
- pre-exp 2x2; 88%; 79.1/79.2/38.0; 0.56/0.62/0.81; diff lim > 2.0

##### Diffraction exp_2642
- DJ.lyz.32.A1 (3% NaCl)
- 350x350x350
- direct from well - from liquid-vapor surface
- 96.8% RH 8 LPM
- pre-exp 2x2; 91%; 79.2/79.1/38.0; 0.64/0.64/1.07; diff lim > 2.0

Whoa. Maybe the humidity is too low? Try heating up the water to get higher humidity. 

2025-05-14.
Now I will collect some full data sets for different soaking protocols.

## Full/partial data sets (RH flow)
Since postrefinement doesn't get done until 25 frames have been collected, the mosaicities will probably be more accurate if I collect more frames. So going forward this is what I'll do. 

### Lysozyme 

##### Dumped into 3% NaCl
###### Diffraction exp_2643
- DJ.lyz.32.D6 (8% NaCl)
- dumped into 3% NaCl & soak for 3'
- some cracking (there may have already been some cracks...)
- pre 2x2 with target at 2.0 A
- 79.2/79.2/38.0 | 0.67/0.62/0.91

###### Diffraction exp_2644
- same xtal as 2643
- pre 2x2 with target at 1.5 A
- 79.1/79.2/38.0 | 0.64/0.60/0.91
- collect full ds with dphi=0.5, dt=20"
	- 79.3/79.3/38.0 | 0.61/0.61/0.91 | I/sigma = 0.9 @ 1.5

##### Diffraction exp_2647
- DJ.lyz.31.B6 (8% NaCl)
- dumped into 3% NaCl
- 300x300x150
- pre 2x2: 97% 79.2/79.2/38.0 | 0.56/0.58/0.66
- collect full ds with dphi=0.5,dt=20"
	- 79.19/79.19/37.94 | 0.60/0.60/0.57 | I/sigma=1.6 @ 1.5

##### Diffraction exp_2684 (5/20/25)
-DJ.lyz.32.D5
- 300x300x150
- dumped into ML, sit for ~2 min 
- cracks perp to c
- pre 2x2: 79.1/79.1/38.0 | 0.57/0.59/0.80
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 100% 79.1/79.1/38.0 | 0.61/0.60/0.61 | I/sigma=1.0

##### Diffraction exp_2685 (5/20/25)
-DJ.lyz.32.D5
- 350x350x200
- dumped into ML, sit for ~2 min 
- lots of cracks (probably perp to c)
- pre 2x2: 79.2/79.2/38.0 | 0.58/0.61/0.79
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 100% 79.2/79.2/30.8 | 0.58/0.61/0.60 | I/sigma=1.4
- after dc, transferred crystal back to ML. The original cracks were still there, but seemed diminished. There were other cracks also, that weren't there from the original soak - maybe from the re-transfer back to ML. 

##### Direct from well
###### Diffraction exp_2645
- DJ.lyz.32.D6 (8% NaCl)
- 300x300x150
- direct from well to 97% RH
- pre 2x2: 93% 79.1/79.2/37.9 | 0.56/0.59/0.83
- collect full ds with dphi=0.5,dt=20"
	- 79.1/79.2/37.9 | 0.62/0.61/0.80 | I/sigma = 0.8 @ 1.5

###### Diffraction exp_2648
- DJ.lyz.31.B6 (8% NaCl)
- 300x300x150
- direct from well to 97% RH
- pre 2x2: 98% 79.1/79.2/37.9 | 0.55/0.59/0.80
- collect full ds with dphi=0.5,dt=20"
	- 79.2/79.2/38.0  | 0.59/0.58/0.56 | I/sigma = 1.0 @ 1.5

###### Diffraction exp_2672 (5/19/25)
- DJ.lyz.32.D6 (8% NaCl)
- 300x300x150
- direct from well to 97% RH
- pre 2x2: 98% 79.1/79.2/38.0 | 0.55/0.59/0.76
- collect partial ds (2x25) with dphi=0.5,dt=20"
	- 79.2/79.2/38.0  | 0.59/0.60/0.58 | I/sigma = 1.3 @ 1.5

###### Diffraction exp_2673 (5/19/25)
- DJ.lyz.32.D6 (8% NaCl)
- 250x250x150
- direct from well to 97% RH
- pre 2x2: 79.2/79.2/38.0 | 0.56/0.59/0.75
- collect partial ds (2x25) with dphi=0.5,dt=20"
	- 99% 79.2/79.2/38.1 | 0.60/0.59/0.60 | I/sigma=1.1 @ 1.5

5' gradient equil 

##### Diffraction exp_2676 (5/19/25)
- DJ.lyz.32.D6 (8% NaCl)
- 300x300x200
- 5' gradient equil to ML, MM mount to 97% RH
- no cracking
- pre 2x2: 79.1/79.2/38.0 | 0.58/0.62/0.81
- collect partial ds (2x25) with dphi=0.5,dt=20"
	-79.1/79.1/38.1 | 0.59/0.59/0.69 | 1.0

##### Diffraction exp_2677 (5/19/25)
- DJ.lyz.32.D6 (8% NaCl)
- 300x300x200
- 5' gradient equil to ML, MM mount to 97% RH
- no cracking
- pre 2x2: 79.1/79.2/38.0 | 0.51/0.61/0.80
- collect partial ds (2x25) with dphi=0.5,dt=20"
	- 99% 79.1/79.1/38.1 | 0.60/0.59/0.66 | I/sigma=1.0 @ 1.5

##### Diffraction exp_2678 (5/19/25)
-DJ.lyz.32.D5
- 350x350x200
- 5' gradient equil to ML, MM mount to 97%
- no cracking
- pre 2x2: 79.2/79.2/38.0 | 0.54/0.59/0.73
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 99% 79.1/79.1/38.0 | 0.60/0.58/0.60 | I/sigma = 0.9 @ 1.5
	


##### 15' gradient equil
Crystals were equilibrated to 3% NaCl/20 mM NaOAc 5.2/5 mg/mL lysozyme using auto_gradient system

##### Diffraction exp_2646
- DJ.lyz.31.B6 (8% NaCl)
- grad equiled as described above
- 300x300x150
- pre 2x2 95% 79.2/79.1/38.1 | 0.58/0.61/0.85
- collect full ds with dphi=0.5,dt=20"
	- 79.1/79.2/38.0 | 0.62/0.61/0.61 | I/sigma=1.2 @ 1.5

##### Diffraction exp_2679 (5/20/25)
-DJ.lyz.32.D5
- 350x350x150
- 15' gradient equil to ML, MM mount to 97%
- cracks perp to c when dumped into ML after grad equil
- pre 2x2: 79.2/79.2/38.0 | 0.58/0.60/0.79
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 99% 79.2/79.2/38.0 | 0.61/0.60/0.67 | I/sigma =  @ 0.8

##### Diffraction exp_2680 (5/20/25)
-DJ.lyz.32.D5
- 350x350x150
- 15' gradient equil to ML, MM mount to 97%. Inflow tube was placed at bottom of pot, rather than top of pot.
- crack after equil, but not when dumping into ML after equil
- pre 2x2: 79.2/79.2/38.0 | 0.57/0.61/0.71
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 99%  79.1/79.1/38.0 | 0.60/0.59/0.61 | I/sigma =  @ 1.5

##### Diffraction exp_2681 (5/20/25)
-DJ.lyz.32.D5
- 350x350x150
- 15' gradient equil to ML, MM mount to 97%. Inflow tube was placed at bottom of pot, rather than top of pot.
- crack after equil, but not when dumping into ML after equil
- pre 2x2: 79.2/79.2/38.0 | 0.56/0.60/0.77
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 99%  79.2/79.2/38.0 | 0.59/0.59/0.60  | I/sigma =  @ 1.1

##### Diffraction exp_2682 (5/20/25)
-DJ.lyz.32.D5
- 350x350x150
- 15' gradient equil to ML, MM mount to 97%. Inflow tube was placed at bottom of pot, rather than top of pot.
- lost a chunk in mounting; but no cracks
- pre 2x2: 79.2/79.2/38.0 | 0.55/0.59/0.69
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 99%  79.2/79.1/38.0 | 0.60/0.61/0.63 | I/sigma=1.2

#### 40' gradient equil

##### Diffraction exp_2649
- DJ.lyz.31.B6 (8% NaCl)
- grad equiled as described above, but 40'
- 350x350x150; might have a 'bad' quadrant
- pre 2x2 93% 79.2/79.1/38.0 | 0.56/0.61/0.77
- collect full ds with dphi=0.5,dt=20"
	- 79.2/79.2/38.0 | 0.59/0.58/0.60 | I/sigma=1.1 @ 1.5

###### Diffraction exp_2674 (5/19/25)
- DJ.lyz.32.D6 (8% NaCl)
- 250x250x150
- 40' gradient equil to ML, brief soak in ML, MM mount to 97% RH
- pre 2x2: 97%; 79.2/79.2/38.0 | 0.58/0.60/0.80
- collect partial ds (2x25) with dphi=0.5,dt=20"
	- 79.2/79.2/38.2 | 0.61/0.60/0.69	| I/sigma=0.7 @ 1.5

###### Diffraction exp_2651 (5/19/25)
- DJ.lyz.32.D6 (8% NaCl)
- 300x300x150
- 40' gradient equil to ML, brief soak in ML, MM mount to 97% RH
- some cracking when transferring to a drop of ML prior to collecting
- pre 2x2: 79.1/79.2/38.1 | 0.59/0.63/0.97
- collect partial ds (2x25) with dphi=0.5,dt=20"
	- 79.0/79.0/38.1 | 0.64/0.64/0.68 | I'sigma=0.9 @ 1.5

##### Diffraction exp_2683 (5/20/25)
-DJ.lyz.32.D5
- 300x300x200
- 40' gradient equil to ML, brief soak in ML,MM mount to 97%. 
- no cracks, maybe ragged
- pre 2x2: 79.1/79.2/38.0 | 0.55/0.59/0.75
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 100% 79.1/79.1/38.1 | 0.59/0.62/0.62 | I/sigma=1.2 


##### Diffraction exp_2669 (5/20/25)
-DJ.lyz.32.D5
- 300x300x150
- 40' gradient equil to ML, MM mount to 97%. 
- no cracks
- pre 2x2: 79.1/79.1/38.0 | 0.55/0.58/0.71
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 99% 79.2/79.2/38.0 | 0.59/0.59/0.60 | I/sigma=1.0

##### Diffraction exp_2686 (5/20/25)
-DJ.lyz.32.D5
- 350x300x150
- 40' gradient equil to ML, brief soak in ML,MM mount to 97%. 
- no cracks, looks good
- pre 2x2: 79.1/79.1/38.0 | 0.55/0.59/0.75
- collect partial ds (2x25) with dphi=0.5, dt=20"
	- 100%  

### Lysozyme full or partial ds summary - RH flow

|exp # 	| equil |	size 			| cell 				| mosaicity 	|	2x2 mosaicity	| I/sigma @ 1.5	|
|-------|-------|------------------	|------------------	|---------------|-------------------|---------------|
| 2648	|	-	|	300x300x150		| 79.2/79.2/38.0  	| 0.59/0.58/0.56| 0.55/0.59/0.80	|	1.0
| 2645	|	-	|	300x300x150		| 79.1/79.2/37.9 	| 0.62/0.61/0.80| 0.56/0.59/0.83	|	0.8
| 2672 	|	-	| 	300x300x150		| 79.2/79.2/38.0  	| 0.59/0.60/0.58| 0.55/0.59/0.76	|	1.3
| 2673	|	-	|	250x250x150		| 79.2/79.2/38.1    | 0.60/0.59/0.60| 0.56/0.59/0.75	|	1.1
| 2644	|	0	|	300x300x150		| 79.3/79.3/38.0 	| 0.61/0.61/0.91| 0.64/0.60/0.91	|	0.9
| 2647	|	0	|	300x300x150		| 79.2/79.2/37.9 	| 0.60/0.60/0.57| 0.56/0.58/0.66	|	1.6
| 2684	|	0	| 	300x300x150		| 79.1/79.1/38.0 	| 0.61/0.60/0.61| 0.57/0.59/0.80	|	1.0
| 2685	|	0	|	350x350x200		| 79.2/79.2/38.0 	| 0.58/0.61/0.60| 0.58/0.61/0.79	|	1.5
| 2676	|	5	|	300x300x200		| 79.1/79.1/38.1 	| 0.59/0.59/0.69| 0.58/0.62/0.81	|	1.0			|
| 2677	|	5	|	300x300x200		| 79.1/79.1/38.1 	| 0.60/0.59/0.66| 0.51/0.61/0.80	|	1.0	
| 2678	|	5	|	350x350x200		| 79.1/79.1/38.0 	| 0.60/0.58/0.60| 0.54/0.59/0.73	|	0.9
| 2646 	| 	15	|	300x300x150		| 79.1/79.2/38.0 	| 0.62/0.61/0.61| 0.58/0.61/0.85	|	1.2			|
| 2679	|	15	|	350x350x150		| 79.2/79.2/38.0    | 0.61/0.60/0.67| 0.58/0.60/0.79	|	0.8			|
| 2680*	|	15	|	300x300x150		| 79.1/79.1/38.0 	| 0.60/0.59/0.61| 0.57/0.61/0.71 	|	1.0			|
| 2681*	|	15	|	350x350x150		| 79.2/79.2/38.0 	| 0.59/0.59/0.60| 0.56/0.60/0.77	|	1.5
| 2682*	|	15	|	350x350x150		| 79.2/79.1/38.0 	| 0.60/0.61/0.63| 0.55/0.59/0.69	|	1.2
| 2779 	|	15	|	300x300x100		| 79.1/79.1/38.1	| 0.59/0.59/0.62| -					|	1.0			|
| 2781 	|	15	|	300x300x100		| 79.1/79.1/38.1	| 0.65/0.63/0.78| -					|	1.0			|
| 2780 	|	15	|	250x250x150		| 79.0/79.0/38.1	| 0.62/0.60/0.63| -					|	0.7			|
| 2649	|	40	|	350x350x150		| 79.2/79.2/38.0 	| 0.59/0.58/0.60| 0.56/0.61/0.77	| 	1.1			|
| 2674	|	40	|	250x250x150		| 79.2/79.2/38.2 	| 0.61/0.60/0.69| 0.58/0.60/0.80	|	0.7			|
| 2651	|	40	|   300x300x150		| 79.0/79.0/38.1    | 0.64/0.64/0.68| 0.59/0.63/0.97	|	0.9			|
| 2683	|	40	| 	350x350x200		| 79.1/79.1/38.1 	| 0.59/0.62/0.62| 0.55/0.59/0.75	|	1.2			|
| 2669	|	40	|	300x300x150		| 79.2/79.2/38.0    | 0.59/0.59/0.60| 0.55/0.58/0.71	|	1.0			|
| 2686	|	40	|														| 0.55/0.59/0.75
* Omitted b/c tube was at the bottom of the pot...
2025-06-09. Collection 2779-81. No cracking in any of these crystals.

2025-05-25.
Notes. Sometimes when dumping the crystal into the final solution after running the gradient, the crystals still crack, and there are schlieren lines. (Although the schlieren lines could be from the 5 mg/mL protein). Since I'm equilibrating to 3% NaCl from 8% NaCl, it makes me wonder if I should position the inflow tube at the bottom of the pot instead of the top...so I try this with a 15' gradient. This didn't work - still cracking when transferring crystal to drop after equilibrating.

Possibly I had the microstepping set incorrectly, so I make the following changes.

1. Change the solution in the syringe to fresh solution.
2. Use a 3 mL syringe rather than 1 mL 
3. Use 0-98% gradient rather than 0-95%.
4. Doublecheck that microstepping is set at the correct level (4).

This seems to have worked. A 15' equil now shows no schlieren lines & no cracking with transfer.
Timeline for today. 
Transfer 3 crystals over 15', and then analyze successively
exp_2680 - e3=0.61
exp_2681 - e3=0.6
exp_2682 - e3=0.63

Transfer 2 crystals over 40'. 
exp_2683 - e3=0.62
exp_2669 - e3=0.60

Dump xtals into ML
exp_


Transfer 1 crystal over 40;
exp_2686

It's interesting that the dumped/cracked crystals show about the same mosaicity as the slower soaks. One possible thing to check is that my ML includes 5 mg/mL protein. Possibly this is helping the crystal stay together?  Could try the same thing tomorrow without the protein. 
2025-05-15. 

### alpha-lactalbumin full/partial ds summary - RH flow.


|exp # 	| equil |	size 			| cell 				| mosaicity 	|	2x2 mosaicity	| I/sigma @ 2.3
|-------|-------|------------------	|------------------	|---------------|-------------------|--------------|
| 2654	|	-	|	300x400x100		| 72.3/104.7/117.3	| 0.61/0.57/0.55| 0.59/0.59/0.91	|	0.9
| 2655	|	-	|   500x200x150		| 71.6/104.4/117.2 	| 0.62/0.60/0.79| 0.58/0.58/0.84 	|	0.3
| 2656	|	-	|	400x350x150		| 71.5/104.5/117.3	| 0.60/0.59/0.61| 0.59/0.59/0.92	|	0.9
| 2653	|	0	|	800x450x200		| 72.0/104.7/117.8	| 0.71/0.58/0.86| 0.59/0.56/0.61	| 	0.44
| 2666	|	0	|	400x250x100		| 72.0/104.7/117.7  | 1.10/0.55/2.19| 1.06/0.60/1.18	| 	0.12
| 2669	|	0	|	400x400x100		| 72.1/104.8/117.7  | 0.98/0.50/4.28| 0.54/0.57/1.60	| 	0.0
| 2650	| 	5	|	400x400x200		| 72.2/105.0/118.1	| 0.62/0.60/0.80| 0.63/0.61/0.94	|	1.2
| 2657 	|	5	|	400x250x100		| 72.2/104.9/117.8	| 0.69/0.55/1.61| 0.74/0.62/1.22	|	0.17
| 2658 	|	5	|	350x250x100		| 72.3/105.1/118.0 	| 0.58/0.54/0.93| 0.56/0.58/0.75	|	0.03
| 2651	|	15	|	550x350x150		| 72.2/105.0/118.1	| 0.61/0.57/0.65| 0.57/0.58/0.77	|	1.2
| 2659	|	15	|	350x350x150		| 72.2/104.9/118.1	| 0.59/0.59/0.64| 0.58/0.59/0.69	|	1.1
| 2661	|	15	|	600x300x100		| 72.3/105.0/118.0 	| 0.58/0.55/0.60| 0.59/0.59/0.70	|	1.0
| 2652	|	45	|	900x400x200		| 72.3/105.1/118.2	| 0.60/0.59/0.58| 0.60/0.60/0.71	|	1.7
| 2662	|	45	|	700x500x200		| 72.3/105.1/118.2  | 0.60/0.60/0.62| 0.61/0.61/0.73	|	1.4
| 2664 	|	45	|	450x350x150		| 72.3/105.0/118.1 	| 0.59/0.57/0.61| 0.57/0.59/0.70 	|	1.3
| 2702	|	180	|	300x300x100		| 72.2/104.9/118.1	| 0.58/0.57/0.59| 0.56/0.57/0.81	|	1.1	

5 minute gradient equilibration to ML with auto-gradient system
ML as above: 20% P8K, 50 mM KH2PO4, 25% glycerol

##### Diffraction exp_2650
- alact.18.D6
- grad equiled over 5' to ML; resulted in a couple long cracks, roughly perpendicular to each other; in both cases the crack extended through the thickness (200 micron dimension); brief transfer to ML
- 400x400x200
- 92% RH
- pre 2x2 97% 72.3/105.0/118.0 | 0.63/0.61/0.94
- collect full ds with dphi=0.5, dt=30"
	- 72.2/105.0/118.1 | 0.62/0.60/0.80 | I/sigma=0.8 @ 2.16

##### Diffraction exp_2657
- alact.18.D6
- 5 min grad equil to ML; substantial cracking...
- 400x250x100
- 92% RH
- pre 2x2 40% 72.3/105.1/117.9 | 0.74/0.62/1.22
- collect partial ds (2x25) with dphi=0.5, dt=30"
	- 95% 72.2/104.9/117.8 | 0.69/0.55/1.61
	
##### Diffraction exp_2658
- alact.18.D6
- 5 min grad equil to ML; substantial cracking...
- 350x250x100
- 92% RH
- pre 2x2 40% 72.2/104.9/117.9 | 0.56/0.58/0.75
- collect partial ds (2x25) with dphi=0.5, dt=30"
	- 72.3/105.1/118.0	| 0.58/0.54/0.93 (2x25)
	- 71.3/104.6/118.2  | 0.59/0.54/1.05 (1x25)
	
15' gradient equilibration to ML

##### Diffraction exp_2651
- alact.18.D6
- grad equiled over 15' to ML; possibly on small surface crack - although this might have been there from harvesting/breaking off a smaller chunk; brief transfer to ML
- 550x350x150
- 92% RH
- pre 2x2 97% 72.3/105.0/118.2 | 0.57/0.58/0.77
- collect full ds with dphi=0.5, dt=30"
	- 72.2/105.0/118.1 | 0.61/0.57/0.65 | I/sigma=0.8 @ 2.16

##### Diffraction exp_2659
- alact.20.D5
- 15 min grad equil to ML;
- 350x350x150 no cracking
- 92% RH 7 LPM
- pre 2x2 95% 72.3/105.1/118.0 | 0.58/0.59/0.69
- collect partial ds (2x25) with dphi=0.5, dt=30"
	- 98% 72.2/104.9/118.1 | 0.59/0.59/0.64
	
##### Diffraction exp_2661
- alact.20.D5
- 15 min grad equil to ML; no cracks
- 600x300x100 no cracking
- 92% RH
- pre 2x2 96% 72.2/104.9/118.0 | 0.59/0.59/0.70
- collect partial ds (2x25) with dphi=0.5, dt=30"
	- 72.3/105.0/118.0 | 0.58/0.55/0.60


45' gradient equilibration to ML

##### Diffraction exp_2652
- alact.18.D5
- grad equiled over 45' to ML; no cracking; brief transfer to ML
- 900x400x200
- 92% RH 8 LPM
- pre 2x2: 97% 72.3/105.0/118.1 | 0.60/0.60/0.71
- collect full ds with dphi=0.5, dt=30"
	- 72.3/105.1/118.2 | 0.60/0.59/0.58 | I/sigma=1.2 @ 2.16
- structure determination
	- Processing with aimless showed CC1/2 drops below 0.25 between 2.17 & 2.13 angstroms, so I cut the data at 2.17.

##### Diffraction exp_2662
- alact.21.D4-6
- grad equiled over 45' to ML; no cracking; brief transfer to ML
- 700x500x200
- 92% RH 8 LPM
- pre 2x2: 97% 72.3/105.0/118.1 0.61/0.61/0.73
- collect partial ds (2x25) with dphi=0.5, dt=30"
	- 72.3/105.1/118.2 | 0.60/0.60/0.62

##### Diffraction exp_2664
- alact.21.D4-6
- grad equiled over 45' to ML; no cracking; brief transfer to ML
- 450x350x150
- 92% RH 8 LPM
- pre 2x2: 96% 72.3/105.0/118.1 | 0.57/0.59/0.70 
- collect partial ds (2x25) with dphi=0.5, dt=30"
	- 72.3/105.0/118.1 | 0.59/0.57/0.61

dumping into ML

##### Diffraction exp_2653
- alact.18.D5
- dump into ML; lots of cracking (photo taken)
- 800x450x200
- 92% RH 8 LPM
- pretty poor diffraction, but can get a cell
- pre 2x2: 62% 72.2/105.0/117.8 | 0.59/0.56/0.61
- collect full ds with dphi=0.5, dt=30"
	- 72.0/104.7/117.8 | 0.71/0.58/0.86 | I/sigma = 0.99 @ 2.55

##### Diffraction exp_2666
- alact.21.D5
- dump into ML; lots of cracking 
- 400x250x100
- 92% RH 8 LPM
- pretty poor diffraction, but can get a cell
- pre 2x2: 62% 72.1/105.6/118.1 | 1.06/0.60/1.18
- collect partial ds (2x25) with dphi=0.5, dt=30"
	- can't get the right cell... | 0.98/0.50/4.2
	- using just the 2nd run:
		- 72.0/104.7/117.7 | 1.10/0.55/2.19

##### Diffraction exp_2669
- alact.21.D5
- dump into ML; lots of cracking 
- 400x400x100
- 92% RH 8 LPM
- pretty poor diffraction, but can get a cell (maybe?)
- pre 2x2: 62% 12/236/72 | 0.54/0.57/1.60
- collect partial ds (2x25) with dphi=0.5, dt=30"
	- 72.1/104.8/117.7 | 0.98/0.50/4.28

2025-05-16. 
Negative control - direct from well

##### Diffraction exp_2654
- alact.18.D5
- mount directly from well (micromesh)
- 300x400x100
- 98% RH
- 2x2 pre: 96% 71.8/104.3/117.1 | 0.59/0.59/0.91
- collect full ds with dphi=0.5, dt=30"
	- something happens after a while - around frame 60
	- at end crystal is dry (probably started drying out at fram 60)
	- e3 mosaicity starts rising about frame 40
	- overall: 0.95/0.61/1.86
	- frames 1-40: 72.3/104.7/117.3 | 0.61/0.57/0.55

##### Diffraction exp_2655
- alact.18.D5
- mount directly from well (micromesh) into microRT tube against water
- 500x200x150
- microRT tube against water
- 2x2 pre: 71.9/104.4/117.2 | 0.58/0.58/0.84
- collect full ds with dphi=0.5, dt=30"
	- 99% 71.6/104.4/117.2 | 0.62/0.60/0.79
	- frames 1-25: 71.1/103.6/116.2 (probably dehydrated)/ 0.63/0.59/0.70

##### Diffraction exp_2656
- alact.18.D5
- mount directly from well in to RH flow 98.5%
- 400x350x150
- 98.5-99% RH
- 2x2 pre: 97% 71.6/104.2/116.9 | 0.59/0.59/0.92
- collect full ds with dphi=0.5, dt=30"
	- 71.5/104.5/117.3 | 0.60/0.59/0.61		
- added on to this after complete. Still did pretty good --> Waiting for RH to get up there paid off...

##### Diffraction exp_2671 (5/29/25)
- alact.20.A5
- 350x400x200
- mount directly from well into RH flow 99.5%
- 2x2 pre: 82% 71.5/104.4/116.8 | 0.56/0.61/0.97
- collect partial ds (2x25) with dphi=0.5, dt=30"
	-

2025-05-17. 

Overnight the RH got to 99%, and this morning would go up to 99.1. I had increase the temperature offset of the water to 5.5 degrees. 

Now to get more data points for lactalbumin. Here instead of collecting full datasets, I will collect 2x25 frames.

### Longer equilibrations. 2025-05-17.

Testing some longer equilibrations. Made a 'cover' for the equilbration jig. (Cover.v1 = small & sitting directly on top of pot with slot for tubing.)

- Try 16 hour equilibration with cover. This did not work b/c of a bug in the program. No injections happening. (And it was dried out in the morning after ~ 12 hours.)


- Time-lapse of 40 μL of ML in crystal pot (pcr tube cap) without cover to see when it phase separates without the 'cover'. 
	- phase separation occurred at 4.0 hours

- 2 x 12 hour equilibration with cover. (2025/18-19)
	- This looked better than above. 
	- From the photos, there is some phase separation after ~ 11 hours. But then it clears up. However, the final solution after ~ 24 hours, based on schlieren lines when mixing, is not the target solution.

	
### Thermolysin
15 minute equilibration to water (0-95%)

##### Diffraction exp_2670
- tln.86.C4
- 200x80 
- 15' gradient equil to 95% water; (no cracking)
- mesh mount to RH 99.3%
- 2x2 pre: 99% 93.9/93.7/131.3 | ?
- collect full ds with dphi=0.5, dt=30" 
	- 98% 94.1/94.1/131.8 | 0.59/0.53/0.55 | I/sigma=0.8 @ 2.0
2025-05-21.

##### Diffraction exp_2687
- tln.87.A4
- 400x80
- 15' gradient equil to 95% water (no cracking)	
- mesh mount to RH 99.3%
- 2x2 pre: 98% 93.7/93.9/131.2 | 0.53/0.54/0.73
- collect partial ds (2x25)with dphi=0.5, dt=20"
	- 99% 93.6/93.6/131.1 | 0.59/0.55/0.54 | I/sigma = 0.8 @ 1.97
	
##### Diffraction exp_2689
- tln.87.A4
- 400x80
- 15' gradient equil to 95% water (no cracking)	
- mesh mount to RH 99.3%
- 2x2 pre: 98% 93.7/93.9/131.2 | 0.61/0.56/0.73
- collect partial ds (2x25)with dphi=0.5, dt=20"
	- 99% 93.3/93.3/130.7 | 0.60/0.55/0.55 | I/sigma = 0.9 @ 2.00	

##### Diffraction exp_2681
- tln.87.A4
- 400x80
- 15' gradient equil to 95% water (no cracking)	
- mesh mount to RH 99.3%
- 2x2 pre: 98% 93.8/93.7/131.2 | 0.57/0.59/0.73
- collect partial ds (2x25)with dphi=0.5, dt=20"
	- Doesn't really work. Processing comes bak C222, but still low mosaicity. (0.55/0.55/0.56)

##### Diffraction exp_2690
- tln.87.A4
- 400x80
- 15' gradient equil to 95% water (no cracking)	
- mesh mount to RH 99.3%
- 2x2 pre: 98% 93.7/93.8/131.1 | 0.50/0.53/0.72
- collect partial ds (2x25)with dphi=0.5, dt=20"
	- 99% 93.2/93.2/130.4 | 0.60/0.56/0.59 | I/sigma=0.7 @ 2.0

Now go for a full dataset

##### Diffraction exp_2691
- 15' gradient equil to 95% water
- mesh mount to RH 99%
- this didn't integrate well - probably dried out too much...

2025-05-22.
Direct from well

##### Diffraction exp_2688
- tln.87.A4
- 300x70
- direct from well to 92% RH	

- 2x2 pre: 98% 93.7/93.8/131.4 | 0.55/0.55/0.65
- collect partial ds (2x25)with dphi=0.5, dt=20"
	- 99% 94.4/94.4/131.9 | 0.58/0.53/0.54 | I/sigma=0.6 @ 2.0

##### Diffraction exp_2692
- tln.87.B5
- 300x70
- direct from well to 92% RH	
- 2x2 pre: 98% 93.7/93.8/131.4 | 0.52/0.52/0.68
- collect partial ds (2x25)with dphi=0.5, dt=20"
	- 99% can't do it with hexagonal...
	
Try increasing the RH

##### Diffraction exp_2693
- tln.87.B5
- 400x70
- direct from well to 95% RH	
- 2x2 pre: 98% 93.7/93.8/131.5 | 0.56/0.59/0.70
- collect partial ds (2x25)with dphi=0.5, dt=20"
	- 88% 92.6/92.6/129.8 | 0.59/0.55/0.56 | I/sigma=1.0


##### Diffraction exp_2695
- tln.87.B5
- 400x70
- direct from well to 95% RH
- 2x2 pre
- collect partial ds (2x25)with dphi=0.5, dt=20"
	- 59% 95.7/95.7/133.8 | 0.58/0.54/0.58 | I/sigma = 0.0 (?)

# Full/partial data sets using microRT tubes	
- getting humid flow to work with thermolysin seems to be problematic, b/c the mol fraction of water is so low. So I switch back to microRT tubes.
Probably should try mounting with MicroRT tubes...

##### Diffraction exp_2697
- tln.87.B6
- 500x80
- direct from well to MicroRT tube against well solution
- 1 frame pre
- partial ds (first 25 frames of strategy) with dphi=0.5, dt=20"
	-93.8/93.8/131.6 | 0.61/0.55/0.53 | I/sigma= 1.1 @ 2.09

##### Diffraction exp_2699
- tln.87.B6
- 400x80
- direct from well to MicroRT tube against well solution
- 1 frame pre
- partial ds (first 25 frames of strategy) with dphi=0.5, dt=20"
	-93.7/93.7/131.3 | 0.58/0.54/0.56 | I/sigma=0.6 @ 2.09
	
##### Diffraction exp_2701
- tln.87.B6
- 300x80
- direct from well to MicroRT tube against well solution
- 1 frame pre
- partial ds (first 25 frames of strategy) with dphi=0.5, dt=20"
	-93.7/93.7/131.3 | 0.58/0.54/0.56 | I/sigma=0.6 @ 2.09

- partial ds (first 25 frames of strategy) with dphi=0.5, dt=20"
	-93.9/93.9/131.6 | 0.59/0.55/0.57

	
Using a cover (v1, with holes), I equilibrated alpha-lactalbumin xtals to ML over 3 hours. No cracking. Rounded edges.

##### Diffraction exp_2702
- alact.20.C6
- 300x300x100 
- RH 92% with Micromesh
- pre 2x2: 72.2/104.9/118.1 | 0.56/0.57/0.81
- partial ds (2x25) with dphi = 0.5; dt=30"
	-99%: 72.3/105.0/118.1 | 0.58/0.57/0.59 | I/sigma=1.1 @ 2.3
Back to thermolysin:

Now use grad_equil to water in 15' (0-95%)

##### Diffraction exp_2703
- tln.87.B6
- 300x80
- microRT vs water
- partial ds (25 frames)
	-94.0/94.0/131.6 | 0.59/0.55/0.60 | I/sigma=0.8 @ 2.09

##### Diffraction exp_2704
- tln.87.B6
- 500x80
- microRT vs water
- partial ds (25 frames)
	-99%: 94.1/94.1/131.8 | 0.59/0.54/0.55 | I/sigma=0.8 @ 2.09

##### Diffraction exp_2705
- tln.87.B6
- 600x90
- microRT vs water
- partial ds (25 frames)
	-99%: 93.8/93.8/131.4 | 0.58/0.54/0.54 | I/sigma=0.6 @ 2.09

Now I try to collect a full data set on the above crystal, but with longer exposures (60") and smaller oscillations(0.3 degrees)

##### Diffraction exp_2706
Final params:
94%:	93.6/93.6/131.2	| 0.50/0.52/0.46 (smaller e3 b/c smaller oscillation range)
I/sigma = 2.73 @ 2.09.

2025-05-23.

This result makes me wonder two things:
1. If I might get higher resolution get a similar results for alpha-lactalbumin with similarly longer exposures.
2. If I might see more interesting things with the mosaicity by using 0.3 degrees rather than 0.5 degrees.

So I try longer exposures for alpha-lactalbumin, with a microRT mount.

##### Diffraction exp_2708
alact.20.B6
800x500x200
3 hour grad eq to ML + overnight soak
microRT tube
full ds (0.3 degrees, 60' exposures)
97% 72.1/104.0/117.7 f=65.06 mos = 0.59/0.62/0.57
Using 1st 30 frames: 
97% 72.2/104.5/118.1 f=65.06 mos = 0.58/0.56/0.54
Using 1st 30 frames with a resolution limit of 2.0 A:
97% 72.2/104.5/118.0 f=65.06 mos = 0.58/0.56/0.53


Crystal from the above 3 hour soak into ML (cryosolution). This crystal then sat overnight. It showed some more surface degradation in addition to the rounded edges. 


Next steps.

1. Grow larger lysozyme crystals to further assess if the cracking with 8% -> 3% really doesn't affect the mosaicity. Will try lower [protein], since lower salt gives larger crystals at 80 mg/mL.

2. Grow additional alpha-lactalbumin crystals for 0.3 degree tests.

3. Grow larger TLN crystals.

(all trays set up 5/23) 

4. Continue developing/testing cover...
- small cover: PLA vs PP
- small cover: depth
- small cover + larger cover together?

2025-05-27. 
2025-05-28.

Trying some new measurements using 0.3 degree tests.

Thermolysin.
Notes:
15 minute gradient equils are 0-98% of water with 30 injections.
- the first one (one tray 87, with young-ish crystals) yielded some missing crystals - possibly these got sucked up into the tubing - and some surface degradation on the remaining crystals. Possibly the younger crystals are more soluble?
- Try again with some older crystals (tray 87.A6; 0-95% water) similar results with the degradation. This is not what I remember from before...
- 2717 died after just ~10 frames. Possibly b/c the mounting solution was well rather than water (using a microRT tube from a previoius crystal)
Need to get a couple more - maybe with protein in the water...
- The full dataset 2719 seemed to have some problems in the beginning (high r-int, weird cell), so I try to process starting with frame 40...
- I realized that 2716-19 were done with the wrong params in autogradient. I had 3 mL syringes, but the software thought they were 1 mL syringes. This means that, although the equilibration was done over 15 min, the injections were 3x larger than intended. Will check if this was why the crystals looked degraded... 

| Exp	|	Well		|	Size	| Treatment			| mounting		|	DC			| Cell			| Dist	| Mosaicity			| I/sigma @ 2	|
|-------|---------------|-----------|-------------------|---------------|---------------|---------------|-------|-------------------|---------------|
| 2709	| tln.88.A4		| 300x80	| direct from well	| microRT/well 	| 1x25 0.3 20"	| 93.7/131.4	| 65.00 | 0.59/0.52/0.45	| 0.8 			|
| 2710	| same as 2709	| "			| "					| "				| 2x13	0.3 20"	| 93.9/131.9	| 65.00	| 0.58/0.52/0.45	| 1.1			|
| 2711	| tln.88.A4		| 300x80	| direct from well	| microRT/well	| 2x15 0.3 20"	| 93.7/131.5	| 64.99	| 0.60/0.51/0.47	| 0.7			|	
| 2714 	| tln.88.A4		| 300x70	| direct from well	| microRT/well	| 2x15 0.3 20"	| 93.4/130.9	| 65.00	| 0.60/0.52/0.50	| 0.8			|
| 2716	| tln.88.A1or4	| 300x70	| 15 min to 98% wat	| microRT/water	| 2x15 0.3 20"	| 93.5/131.0	| 64.84	| 0.59/0.52/0.46	| 0.7			|
| 2717	| tln.87.A6		| 600x80	| 15 min to 95% wat	| microRT/water	| full 0.3 60"	| 
| 2719	| tln.87		| 500x75	| 15 min to 95% wat	| microRT/water	| full 0.3 60"	| 93.5/131.0	| 64.96	| 0.59/0.51/0.49	| 2.9			|
| 2719	| tln.87		| 500x75	| 15 min to 95% wat	| microRT/water	| full 0.3 60"	| 93.5/131.0	| 64.96	| 0.59/0.51/0.47	| 2.9			| Using frame 40on

Notes:


2025-05-29.
lactalbumin
| Exp	|	Well		|	Size		| Treatment			| mounting		|	DC			| Cell					| Dist	| Mosaicity			| I/sigma @ 2.3	|
|-------|---------------|---------------|-------------------|---------------|---------------|-----------------------|-------|-------------------|---------------|
| 2720	| alact.22.A4	| 800x400x150	| direct from well	| microRT/well	| 2x15 0.3 30"	| 99% 72.4/104.5/117.3	| 65.2	| 0.59/0.55/0.55	|	0.6			|
| 2722	| alact.22.A4	| 700x500x150	| direct from well	| microRT/well	| 2x15 0.3 30"	| 99% 71.3/103.7/116.4	| 65.0	| 0.59/0.65/0.60	|				|
| 2724	| alact.21.A4	| 700x500x150	| direct from well	| microRT/well	| 2x15 0.3 30"	|100% 72.0/104.8/117.0	| 65.04	| 0.60/0.54/0.55	|	0.6			|
| 2725	| alact.21.A4	| 600x300x100	| direct from well	| microRT/well	| 2x15 0.3 30"	| 99% 72.2/104.8/117.4	| 65.00	| 0.57/0.53/0.55	|	0.8			|
| 2734	| alact.21.D4	| 400x400x150	| dumped to ML		| microRT/ML	| 2x15 0.3 30"	| 31% 72.1/103.8/117.8	| 65.00	| 0.74/0.61/4.38	|	?			|
| 2735	| alact.21.D4	| 400x400x150	| dumped to ML		| microRT/ML	| 2x15 0.3 30"	| 74% 72.2/104.8/118.2	| 65.00	| 0.94/0.58/2.50	|	0.1			|
| 2739	| alact.21.C4	| 300x200x100	| dumped to ML		| microRT/ML	| 2x15 0.3 30"	| -----	                | 65.00	| 0.86/0.57/2.36	|	0.1			|
| 2726	| alact.21.A4	| 300x300x300	| 5' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 97% 72.3/104.6/118.0	| 65.10	| 0.62/0.52/0.69	|	0.4			|
| 2727	| alact.21.A4	| 400x200x100	| 5' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 99% 72.1/104.5/117.8	| 64.99	| 0.62/0.56/0.54	|	0.7			|
| 2728	| alact.21.A4	| 400x200x100	| 5' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 89% 72.1/104.5/117.9	| 65.00	| 0.72/0.59/1.18	|	0.5			|
| 2729	| alact.21.A4	| 600x300x100	| 15' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 79% 72.1/104.7/117.6	| 64.85	| 0.59/0.56/0.79	|	0.5			|
| 2731	| alact.21.A4	| 400x250x100	| 15' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 82% 71.8/104.2/117.6	| 64.77	| 0.77/0.53/0.62	|	0.4			|
| 2732	| alact.21.A4	| 400x400x150	| 15' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 99% 72.1/104.5/117.9	| 65.00	| 0.58/0.54/0.50	|	0.4			|
| 2736	| alact.21.Cx	| 400x400x150	| 40' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 99% 72.1/104.6/117.9	| 65.00	| 0.58/0.57/0.50	|	1.5			|
| 2737	| alact.21.Cx	| 500x400x150	| 40' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 97% 72.1/104.6/117.9 	| 65.00 | 0.58/0.56/0.53	|	1.2			|
| 2738	| alact.21.Cx	| 700x500x200	| 40' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 97% 72.2/104.4/117.9	| 65.32	| 0.58/0.56/0.53	|  ~1.0			| 
| 2708	| alaxt.20.B6	| 800x500x200	| 180' gradeq to ML	| microRT/ML	| 1x30 0.3 60"	| 97% 72.2/104.5/118.0 	| 65.06	| 0.58/0.56/0.53	|

Notes:
- 2722 something happened during DC - dried out - post mortem shows extensive cracking. The numbers shown are for the 1st 13 frames before things go haywire
- 2726 - quite cracked
- 2727 - no obvious cracks
- 2728 - quite cracked
- 2729 - maybe more cracked after dc - could be old solution in microRT?
- 2731 - no cracks, but maybe some blemishes
- 2732 - clear
- 2734 - lots of cracking when dumped; part of crystal broke/off when mounting...
- 2735 - lots of cracking
- 2736 - rounded edges & surface degradation (pitting)
- 2737 - I broke a large crystal into 2 pieces; this is one of them; rounded edges & surface degradation
- 2738 - very clean
- 2739 - lots of cracking


2025-05-30-
lysozyme
| Exp	|	Well		|	Size		| Treatment			| mounting		|	DC			| Cell					| Dist	| Mosaicity			| I/sigma @ 2.0	|
|-------|---------------|---------------|-------------------|---------------|---------------|-----------------------|-------|-------------------|---------------|
| 2740	| lyz.33.B1		| 300x300x100	| direct from well	| microRT/3% slt| 2x15 0.3 30"	| 100% 79.2/38.0		| 65.02	| 0.62/0.55/0.51	|	5.8			|
| 2741	| lyz.33.B1		| 200x200x100	| direct from well	| microRT/well  | 2x15 0.3 30"	| 100% 79.2/38.0		| 65.02	| 0.58/0.54/0.50	|	6.3			|
| 2743	| lyz.33.B1		| 200x200x100	| direct from well	| microRT/well  | 2x15 0.3 30"	| 100% 79.2/38.0		| 65.02	| 0.59/0.55/0.49	|	7.6			|
| 2742	| lyz.34.A2		| 300x300x100	| dumped into ML	| microRT/ML  	| 2x15 0.3 30"	| 100% 79.2/38.0		| 65.05	| 0.58/0.57/0.51	|  10.1			|
| 2760	| lyz.34.D2		| 300x300x100	| dumped into ML	| microRT/ML  	| 2x15 0.3 30"	| 100% 79.2/37.9		| 65.02	| 0.56/0.59/0.51	|	5.0			|
| 2761	| lyz.32.C4		| 400x300x200	| dumped into ML	| microRT/ML  	| 2x15 0.3 30"	| 100% 79.3/38.0		| 65.06	| 0.57/0.58/0.49	|  10.6			|
| 2714	| lyz.34.B4		| 400x400x200	| dumped  into ML	| microRT/ML	| 2x15 0.5 30"	|  99% 79.2/38.0 		| 65.11	| 0.59/0.61/0.58	|	6.1			|
| 2762	| lyz.32.C4		| 400x200x100	| dumped into ML/2	| microRT/ML/2  | 2x15 0.3 30"	| 100% 79.1/38.0		| 65.14	| 0.56/0.55/0.51	|	8.2			|
| 2763	| lyz.32.C4		| 300x200x100	| dumped into ML/2	| microRT/ML/2  | 2x15 0.3 30"	|  72% 79.1/38.1		| 65.00	| 0.67/0.55/0.67	|	3.9			|
| 2716	| lyz.34.B4		| 400x400x200	| dumped to ML/2	| microRT/ML/2	| 2x15 0.5 30"	| 100% 79.2/38.1 		| 65.00	| 0.57/0.58/0.50	|	8.8			|
| 2777	| lyz.34.B4		| 400x400x200	| dumped to ML/4	| microRT/ML/2	| 2x15 0.5 30"	|  99% 79.2/38.0 		| 65.03	| 0.57/0.62/0.50	|  13.8			|
| 2768	| lyz.33.C1		| 200x200x100	| 5' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	|  99% 79.2/38.0		| 65.00 | 0.58/0.56/0.50	|   6.0			|
| 2769	| lyz.33.C1		| 300x300x100	| 5' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	| 100% 79.1/37.9		| 65.00	| 0.59/0.55/0.54	|   6.3			|
| 2770	| lyz.33.B1		| 300x300x150	| 5' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	| 100% 79.3/38.0		| 65.10	| 0.59/0.55/0.49	|	5.3			|
| 2764	| lyz.34.A4		| 300x300x100	| 15' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	|  99% 79.2/38.0		| 65.00	| 0.59/0.57/0.53 	|	7.4			|
| 2765	| lyz.34.A4		| 300x300x100	| 15' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	|  99% 79.2/38.0		| 65.06	| 0.60/0.57/0.57	|	5.6			|
| 2766	| lyz.34.A4		| 300x300x100	| 15' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	|  99% 79.1/37.9 		| 64.91	| 0.60/0.63/0.53	|	? (60sec)	|
| 2771	| lyz.33.BorC1	| 250x250x100	| 15' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	|  94% 79.2/38.0		| 65.00	| 0.63/0.56/0.56	|	5.0			|
| 2772	| lyz.33.BorC1	| 200x200x100	| 15' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	| 100% 79.1/37.9		| 65.00	| 0.59/0.55/0.50	|	6.6			|
| 2718	| lyz.33.BorC1	| 300x300x100	| 15' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	| 100% 79.2/38.0		| 65.05 | 0.58/0.57/0.53 	| 	7.9			|
| 2774*	| lyz.33.B2		| 350x350x150	| 15' gradeq to ML	| microRT/ML	| 2x15 0.5 30"	|  99% 79.2/38.0		| 65.00	| 0.59/0.56/0.50	|	7.3			|
| 2775*	| lyz.33.B2		| 250x250x100	| 15' gradeq to ML	| microRT/ML	| 2x15 0.5 30"	|  99% 79.2/38.0		| 65.00	| 0.58/0.56/0.51	|	6.7			|
| 2776*	| lyz.33.B2		| 300x250x150	| 15' gradeq to ML	| microRT/ML	| 2x15 0.5 30"	| 100% 79.2/38.0 		| 65.00	| 0.58/0.55/0.49	|	8.3			|
| 2773	| lyz.33.D1		| 350x350x150	| 40' gradeq to ML	| microRT/ML  	| 2x15 0.3 30"	| 100% 79.2/37.9		| 65.06	| 0.58/0.56/0.50	|	8.3			|
| 2722	| lyz.33.D1		| 300x300x100	| 40' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	|  99% 79.1/38.0		| 64.99	| 0.59/0.57/0.48	|	2.8			|
| 2724	| lyz.34.A4		| 400x400x200	| 40' gradeq to ML	| microRT/ML	| 2x15 0.3 30"	| 100% 79.2/37.9		| 65.03	| 0.57/0.58/0.50	|	9.1			|

Notes:
- ML = 3% NaCl, 20 mM NaOAc 5.2, 5 mg/mL protein
- 2742, 2760 - cracks perp to c. 
- 2761 - similar cracking but a little worse.
- 2762 - dumped into 50%ML; cracking worse than 2761. about 10 cracks similarly spaced perp to c
	- sometimes it's hard to tell if the cracks are still there after the crystal is mounted, but with 2762 they definitely are still there.
	- after collecting data I put the crystal into ML/2. Cracks were still there. After ~ 2 hours, the cracked parts had dissolved, so the crystal was now composed of several slabs
- 2763 - even worse cracking than 2762 - crystal seemed to start to dissolve; amazing that these cracks don't seem to have an effect on the diffraction...
- 2764-66 - no cracking; weird equil where the pot was mostly empty, but dumping ML on didn't cause cracking...
- 2768-2770 - no cracking
- 2771-2718 - no cracking
- 
- 2773,2722, 2774 - no cracking

2025-06-03. 

I note that the mosaicities for the 15' soaks are higher than the others, including the 40' soaks. The crystals used for the 15' soaks were all from wells that had been previously opened. So I will try with a well that hasn't been opened. 
- This does seem to be the case. The new set done with a fresh well (2774-2776), yielded lower mosaicities. 

Now I try to repeat the tests showing that cracked crystals are intact, diffractionwise. 

Exp_2714
- well lyz.34.B2 dumped to ML (3% NaCl)
- cracking perp to c axis. Photo taken
![|](Images/crystal_exp2714_b4diffraction.jpg "Screenshot")

Exp_2716 - dumped to 1.5% NaCl; lots of cracking, but still low mosaicity
Exp_2777 - dumped to 0.75% NaCl; lots of cracking, but still low mosaicity
Exp_2778 - collect full ds on Exp_2777


2025-06-03. Revisit TLN, checking for the same degradation that I saw above.
- Here I didn't see the same degradation after the 15 minute equilibration.So either above the crystals were too young or the rate was too large. Could be worth investigating further.
- However, the crystals showed degradation after about 2 hours sitting in the pot of water.
- Exp_2779 lasted about 10-15 60" frames before the diffraction decayed dramatically
- Inspection after showed the crystal was very dry.
- So I try again, but make the mount more wet, and have the liquid column in the microRT tube close to the crystal.
- 5' gradeq - all xtals look good. No degradation during the three DCs/ These are 5' to 95% water, then dumped into water.
- 15' gradeq - all xtals look good. No degradation during the three DCs. There are 15' to 95% water, then dumped into water.
- 40' gradeq -
- dumped into water - these are all breadslices that are rather thin (10-20 microns), but still diffract to about 3.5 angstroms...



| Exp	|	Well		|	Size	| Treatment			| mounting		|	DC			| Cell			    | Dist	| Mosaicity			| I/sigma @ 2	|
|-------|---------------|-----------|-------------------|---------------|---------------|---------------    |-------|-------------------|---------------|
| 2709	| tln.88.A4		| 300x80	| direct from well	| microRT/well 	| 1x25 0.3 20"	| 93.7/131.4		| 65.00 | 0.59/0.52/0.45	| 0.8 			|
| 2710	| same as 2709	| "			| "					| "				| 2x13	0.3 20"	| 93.9/131.9		| 65.00	| 0.58/0.52/0.45	| 1.1			|
| 2711	| tln.88.A4		| 300x80	| direct from well	| microRT/well	| 2x15 0.3 20"	| 93.7/131.5		| 64.99	| 0.60/0.51/0.47	| 0.7			|	
| 2714 	| tln.88.A4		| 300x70	| direct from well	| microRT/well	| 2x15 0.3 20"	| 93.4/130.9		| 65.00	| 0.60/0.52/0.50	| 0.8			|
| 2724  | tln.87.C4     | 80x20     | dumped to water   | microRT/water | 2x15 0.3 40"	| 99% 93.7/131.0	| 65.00	| 0.61/0.49/0.50	| 0.3			|
| 2726	| tln.87.C4		| 90x20		| dumped to water	| microRT/water	| 2x15 0.3 40"	|100% 93.9/130.9	| 65.00	| 0.64/0.52/0.48	| 0.2			|
| 2729	| tln.87.C4		| 90x20		| dumped to water	| microRT/water	| 2x15 0.3 40"	|100% 93.7/130.6	| 65.00	| 0.58/0.49/0.45	| 0.2			|  
| 2780	| tln.87.B4		| 500x70	| 5' ge to water	| microRT/water | 2x15 0.3 20"	| 99% 93.4/130.8	| 65.00 | 0.59/0.52/0.45	| 0.9 			|
| 2713	| tln.87.B4		| 500x70	| 5' ge to water	| microRT/water | 2x15 0.3 20"	| 99% 93.4/130.8	| 64.85 | 0.57/0.51/0.46	| 1.1 			|
| 2781	| tln.87.B4		| 500x70	| 5' ge to water	| microRT/water | 2x15 0.3 20"	| 99% 93.4/130.8	| 65.00 | 0.59/0.52/0.45	| 0.9 			|
| 2779	| tln.87.B4		| 400x80	| 15' ge to water	| microRT/water | 
| 2718	| tln.87.B4		| 400x70	| 15' ge to water	| microRT/water | 2x15 0.3 20"	|100% 93.7/131.0	| 64.78 | 0.59/0.54/0.52	| 0.7 			|
| 2720	| tln.87.B4		| 400x70	| 15' ge to water	| microRT/water | 2x15 0.3 20"	|100% 93.8/131.3	| 65.00 | 0.58/0.50/0.44	| 0.7 			|
| 2722	| tln.87.B4		| 400x70	| 15' ge to water	| microRT/water | full 0.3 45"	|100% 93.8/131.3	| 65.00 | 0.58/0.50/0.44	| 0.7 			|

2025-06-08.
One key question is whether slower soaks are beneficial even if there is no cracking. 
- For thermolysin, we can look at mosaicities for 5' vs 15' soaks. We get 0.457(7) for 5' and 0.508 (45) for 15'.
- For lysozyme, we get no differences between any of the average mosaicities measured (i.e. the difference ie less than the sumof the standard errors). 
- For alpha-lactalbumin, if we compare 15' equilibrations that were intact vs 40/45' equilibrations we get:
	- Humid flow: 15' intact: 0.62 (2), 45': 0.64 (2)
	- MicroRT: 15' intact: 0.54, 40': 0.52(1)
	
2025-06-09.

Today will collect additional data on 15' equilibrations with:
 - lysozyme and humid flow, b/c some of the previous ones involved the input tubing being too far down in the well
 
The relevant crystals are listed in the tables above.


