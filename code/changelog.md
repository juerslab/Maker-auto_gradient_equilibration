## Changelog 
- for poseidon syringe pumping system code. Description of modifications made by Juers Lab at Whitman College to Pachter Lab software.


### 1. Main python code
#### poseidon_main_gf_v0.1.1.py
- the primary modification of the original poseidon_main.py by D. Juers and S. Stothers from Whitman College over 2021-25
	- add gradient flow capabilities
		- linear gradient
		- equal volume injections
	- change available units 
	- add move to zero and move to max volume, with maximum speed
	- add take photos after each injection in auto run
	- add monitoring of stepper motor moves, updating display of positions in real time
 	- add Tool Tips on various widgets for context-enriched help
	- add help screen with basic directions
	- establish a default acceleration near the maximum, with user-selected accelerations as an option. This essentially makes the moves constant speed by default.
	- add a mixing option during gradient runs, where the solution is mixed in the injection tube before injecting into the reservoir

#### poseidon_main_gf_v0.1.2.py
 - bug fixes of v0.1.1 to handle some issues with the Pause, Stop & Resume buttons (see issue #17)

### 2. Python code for gui
poseidon_controller_gf_gui.py
- several modifications to go with the above main python code, including new menus for gradient flow

### 3. Arduino code
arduino_serialCOM_v0.1.1.ino 
- Minor modifications of original arduino code

