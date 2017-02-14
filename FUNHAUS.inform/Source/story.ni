"FUNHAUS" by Keely Thompson

[The commands list code, from Assasin.]
The list is a backdrop which is everywhere.

understand the command "commands" as something new. Commanding is an action applying to one thing. understand "commands [things]" as commanding. understand "command [things]" as commanding.

instead of commanding list:
	say "This is a list of commands available in the game. Any other action does not exist. Available shortcuts for commands are in parenthesis. [line break][line break]Commands: North (n), East (e), South (s), West (w), Examine (x), Look (l), Inventory (i), [line break]Break ____ [bold type]with[roman type] ____ , Take ____ .".
	
[new commands]
Understand the command break as something new. Breaking is an action applying to two things. Understand "break [something] with [something]" as breaking. 

[when play begins]
When play begins: say "You and your best friend, Jessica, are standing outside the FUNHAUS, an abandoned funhouse located on your local abandoned fairgrounds. She finally talked you into breaking in with her and checking it out. Time to have some fun... [line break][line break]You can view the commands possible in this game at any time by typing 'commands list'."

The player is carrying Pliers and Pepper spray.

[Fairgrounds]
Fairgroundsroom is a room. "It's dark out, and all you can see is the faint outline of a red door with a rickety old sign on top of it. It says FUNHAUS." Printed name is "The Fairgrounds". 

Lock is in Fairgroundsroom. Lock is undescribed. 

Instead of breaking lock:
	say "You break the lock on the door to the FUNHAUS. You're in.";
	Now door1 is unlocked.
	
[if descriptions with help from Help Sherlock]
[need to change description for door after lock is broken, check the sherlock holmes code.]
Door1 is a locked lockable door. Door1 is north of Fairgroundsroom and south of Hallwayroom. Door1 is scenery. The description is "[if the player is in Fairgroundsroom] An old, red door, with paint chipping off from years of weathering and neglect. There's a big lock on it [end if]. [if the player is in Hallwayroom]The other side of the red door. Your only way out and back to freedom [end if]." Printed name is "FUNHAUS Front Door".

Understand "door" as door1.
Understand "FUNHAUS Front Door" as door1.
Understand "front door" as door1.

[Hallway]
Instead of going north in Fairgroundsroom:
	If door1 is open:
		move player to Hallwayroom;
		say "A flash of white face paint and big red nose grab Jessica from your side. Before you know it they're gone, and all you can hear is the clown cackling and Jessica screaming as he takes her farther and farther into the house. You have to find her and escape as soon as you can."
		
Hallwayroom is north of Door1. "A black, ominous hallway. A faded pink door is to the west and a faded blue door is to the east." Printed name is "The Hallway".

Mirrorsroom is east of Hallwayroom. Printed name is "The Mirrors".

BallPitroom is west of Hallwayroom. Printed name is "The Ball Pit".

CreepyPaintingsroom is north of BallPitroom. Printed name is "The Creepy Paintings".

RusticBedroom is east of CreepyPaintingsroom. Printed name is "The Rustic Bedroom".

Arcaderoom is north of Mirrorsroom. Printed name is "The Arcade".

Basementroom is below RusticBedroom. Printed name is "The Basement".