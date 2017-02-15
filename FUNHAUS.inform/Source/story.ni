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

Lock is in Fairgroundsroom. Lock is scenery.

Instead of breaking lock:
	say "You break the lock on the door to the FUNHAUS.";
	Now door1 is unlocked.
	
[if descriptions with help from Help Sherlock]
[need to change description for door after lock is broken, check the sherlock holmes code.]
Door1 is a locked lockable door. Door1 is north of Fairgroundsroom and south of Hallwayroom. Door1 is scenery. The description is "[if the player is in Fairgroundsroom] An old, red door, with paint chipping off from years of weathering and neglect. There's a big lock on it [end if]. [if the player is in Hallwayroom]The other side of the red door. Your only way out and back to freedom [end if]." Printed name is "FUNHAUS Front Door".

Understand "door" as door1.
Understand "FUNHAUS Front Door" as door1.
Understand "front door" as door1.

[Hallway]
Instead of going north in Fairgroundsroom:
	If door1 is unlocked:
		move player to Hallwayroom;
		say "A flash of white face paint and big red nose grab Jessica from your side. Before you know it they're gone, and all you can hear is the clown cackling and Jessica screaming as he takes her farther and farther into the house. You're all alone now. You have to find her and escape as soon as you can.";
	Otherwise:
		say "The door is locked, obviously. The FUNHAUS has been abandoned for years. You have to break in."
		
Hallwayroom is north of Door1. "A black, ominous hallway. A faded pink door is to the west and a faded blue door is to the east." Printed name is "The Hallway".

Pinkdoor is a unlocked, lockable, closed and openable door. Pinkdoor is west of Hallwayroom and east of BallPitroom. Pinkdoor is scenery. The description is "An old pink door. The paint is fading and chipping off."
Understand "pink door" as pinkdoor.

Bluedoor is an unlocked, lockable, closed and openable door. Bluedoor is east of Hallwayroom and west of Mirrorsroom. Bluedoor is scenery. The description is "An old blue door. The paint is fading and chipping off."
Understand "blue door" as bluedoor. 

After going west in Hallwayroom:
	now pinkdoor is locked.
	
After going east in Hallwayroom:
	now bluedoor is locked.

[Ball Pit Room]
BallPitroom is west of Pinkdoor. Printed name is "The Ball Pit". "You fall of the edge of the doorway into a pit of plastic colored balls. The walls are completely bare except for four colored indentations."

Indentations are scenery in Ballpitroom. The description is "There are four spherical indentations on the wall. A red indentation, a blue indentation, a yellow indentation, and a green indentation.."
Understand "wall" as indentations. 
Understand "colored indentations" as indentations.
Understand "four colored indentations" as indentations. 

Red ball is in Ballpitroom. red ball is undescribed. The description is "A red ball, red like the color of the clown's nose."
Red indentation is an open container in Ballpitroom. red indentation is scenery. The description is "A red spherical indentation in the wall."

Blue ball is in ballpitroom. blue ball is undescribed. The description is "A red ball, blue like the painted tear on the clown's face."
Blue indentation is an open container in Ballpitroom. blue indentation is scenery. The description is "A blue spherical indentation in the wall."

Yellow ball is in ballpitroom. yellow ball is undescribed. The description is "A yellow ball, yellow like the sun you'll never see again."
Yellow indentation is an open container in Ballpitroom. yellow indentation is scenery. The description is "A yellow spherical indentation in the wall."

Green ball is in ballpitroom. green ball is undescribed. The description is "A green ball, green like the grass outside you'll never see again."
Green indentation is an open container in Ballpitroom. green indentation is scenery. The description is "A green spherical indentation in the wall."

Purple ball is in ballpitroom. purple ball is undescribed. The description is "A purple ball, purple like the shiny cheap sateen of the clown's costume."

Pink ball is in ballpitroom. pink ball is undescribed. The description is "A pink ball, pink like you mother's favorite dress you'll never see again."

Balls is scenery in ballpitroom. balls is undescribed. The description is "Plastic colored balls of the purple, red, yellow, pink, green, and blue variety."
Instead of taking balls:
	say "Which ball do you mean dummy? You can't take all of them at once. Jeez, you have to be smarter than this if you want to make it out alive."
	
Instead of going east in Ballpitroom:
	say "The door slammed shut when you fell in and is locked now. You hear a cackle on the other side. Looks like you're not so alone."

After putting Red ball in Red indentation and putting Blue ball in Blue indentation and putting Green ball in Green indentation and putting Yellow ball in Yellow indentation:
	say "A big rumbling noise erupts around you. You stand in awe as the wall starts to crack. A large rectangular piece of it breaks off and falls into the room, and you barely move out of the way in time. It's a doorway to another room to the north."
					
	

[Mirror Room]

Mirrorsroom is east of Bluedoor. Printed name is "The Mirrors".

CreepyPaintingsroom is north of BallPitroom. Printed name is "The Creepy Paintings".

RusticBedroom is east of CreepyPaintingsroom. Printed name is "The Rustic Bedroom".

Arcaderoom is north of Mirrorsroom. Printed name is "The Arcade".

Basementroom is below RusticBedroom. Printed name is "The Basement".