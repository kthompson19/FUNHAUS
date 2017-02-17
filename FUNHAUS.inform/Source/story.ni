"FUNHAUS" by Keely Thompson

[disable take all, cred: calien]
Rule for deciding whether all includes something: it does not.

[The commands list code, from Assasin.]
The list is a backdrop which is everywhere.

understand the command "commands" as something new. Commanding is an action applying to one thing. understand "commands [things]" as commanding. understand "command [things]" as commanding.

instead of commanding list:
	say "This is a list of commands available in the game. Any other action does not exist. Available shortcuts for commands are in parenthesis. [line break][line break]Commands: North (n), East (e), South (s), West (w), Examine (x), Look (l), Inventory (i), [line break]Break ____ [bold type]with[roman type] ____ , Take ____ , Insert ____ [bold type]into[roman type]____, Press ____, Talk to ____.".
	
[new commands, Talking command from Jim Aikin's handbook]
Understand the command break as something new. Breaking is an action applying to two things. Understand "break [something] with [something]" as breaking. 

Understand the command press as something new. Pressing is an action applying to one thing. Understand "press [something]" as pressing.

Talking to is an action applying to one visible thing. Understand
"talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

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
BallPitroom is west of Pinkdoor. Printed name is "The Ball Pit". "You fall of the edge of the doorway into a pit of plastic colored balls. The walls are completely bare except for four colored indentations with a big button next to them." [need to change description when coming in from paintings or make it not able to go there]

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
	
Button is a thing in ballpitroom. Button is undescribed. The description is "A big, red button, probably meant for pressing."
Understand "big button" as button.

Instead of pressing button when Red ball is in Red indentation and Green ball is in Green indentation and blue ball is in Blue indentation and Yellow ball is in Yellow indentation:
	say "A big rumbling noise erupts around you. You stand in awe as the wall starts to crack. A large rectangular piece of it breaks off and falls into the room, and you barely move out of the way in time. It's a doorway to another room to the north."

Instead of pressing button when Red ball is not in Red indentation or Green ball is not in Green indentation or Blue ball is not in Blue indentation or Yellow ball is not in Yellow indentation:
	say "Doesn't seem to do anything yet."
	
Instead of going north in ballpitroom when Red ball is not in Red indentation or Green ball is not in Green indentation or Blue ball is not in Blue indentation or Yellow ball is not in Yellow indentation:
	say "It's just walls. Nowhere to go."
	
[Creepy Painting Room]

CreepyPaintingsroom is north of ballpitroom. "The room's walls are lined with dozens of creepy, nerve-racking paintings. There are ones of clowns, dolls, fake Mona Lisa, and even a ghastly girl standing in a dark forest. Wait, the Ghastly Girl seems to be moving!" Printed name is "The Creepy Paintings".

Ghastly Girl is a woman in Creepypaintingsroom. "'Hey little one, why don't you come over and talk to me?' says Ghastly Girl.[line break] [line  break] (To talk to Ghastly Girl, simply type 'Talk to Ghastly Girl.')". The description is "Her face is shrouded by her black, stringy hair. She wears a simple but old-fashioned black dress, and she stands in the middle of a dark forest where nothing seems to grow. Who was the madman who thought to paint this one?!"

Instead of talking to Ghastly Girl:
	say "[one of] 'Hey,' you say reluctantly. [paragraph break] 'Hi there, you're new. We don't normally get a lot of visitors around here,' replies Ghastly Girl. (To continue talking to Ghastly Girl, simply type 'Talk to Ghastly Girl OR g'). [or] 'Yeah, well I'm not surprised about that part,' you say with a sigh, looking around the dilapidated room. [paragraph break] 'What's that supposed to mean?! I'll have you know, I actually just saw someone else a few minutes ago, and she was was prettier than you!' Ghastly Girl exclaimed. She looks hurt, like a small child. (To continue talking to Ghastly Girl, simply type 'Talk to Ghastly Girl OR g'). [or] 'Wait, I'm sorry, I didn't mean that,' you hastily apologize. 'Who did you see?' [paragraph break] 'Oh, what's it to you?' Ghastly Girl replies sassily. (To continue talking to Ghastly Girl, simply type 'Talk to Ghastly Girl OR g'). [or] 'I lost my friend and I'm looking for her. Please, it's really important!' you beg desperately. [paragraph break] 'Oh fine, I might have seen the master move a certain rug over in the Bedroom, but I don't know.' (To continue talking to Ghastly Girl, simply type 'Talk to Ghastly Girl OR g'). [or] 'A rug? Some help you are. Whatever.' you reply. [or] You don't want to talk to Ghastly Girl anymore. She's irritating. [stopping]"
	
[Rustic Bedroom]

RusticBedroom is east of CreepyPaintingsroom. "You walk into a bedroom that seems completely out of place in the FUNHAUS. It has red walls and a large bed with a rich brown colored oak headboard. There's a brown oak table by the bed with a vase on it and a big tapestry-like rug in the middle of the room." Printed name is "The Rustic Bedroom". 

Walls are scenery in rusticbedroom. The description is "Deep burgundy walls surround you in the bedroom."
Understand "red walls" as walls.

Bed is scenery in rusticbedroom. The description is "A big bed with lots of pillows and blankets. One of the pillows looks out of place."
Understand "large bed" as bed.

Headboard is scenery in rusticbedroom. The description is "A large, beautiful oak headboard."
Understand "oak headboard" as headboard.
Understand "brown colored oak headboard" as headboard.
Understand "brown oak headboard" as headboard.
Understand "brown headboard" as headboard.

oakTable is in rusticbedroom. oakTable is scenery. The description is "A small bedside table. A vase is here."
Understand "brown oak table" as oaktable.
Understand "table" as oaktable.
Understand "brown table" as oaktable.

Vase is an object in rusticbedroom. Vase is undescribed. The description is "A tall, skinny red vase. "

Rug is an object in rusticbedroom. Rug is undescribed. The description is "The rug has very small and intricate red and gold detailing all over it. It looks like it's a little crooked, like it's been moved recently." The rug can be pushed or not pushed. The rug is not pushed.
Understand "big rug" as rug.
Understand "big tapestry-like rug" as rug.

After pushing rug:
	say "You move just a corner of the rug up and discover that the floor underneath it is a much darker shade of wood than anywhere else in the room. You move the rug completely out of the way revealing a trapdoor!";
	now the rug is pushed.
	
Instead of going down in Rusticbedroom:
	If rug is pushed:
		move player to basementroom;
	otherwise:
		say "There's no way to go down right now."

[Mirror Room]

Mirrorsroom is east of Bluedoor. Printed name is "The Mirrors".

Instead of going west in Mirrorsroom:
	say "The door slammed shut when you walked in and is locked now. You hear a cackle on the other side. Looks like you're not so alone."
	
[Arcade Room]

Arcaderoom is north of Mirrorsroom and east of RusticBedroom. Printed name is "The Arcade".

Basementroom is below RusticBedroom. Printed name is "The Basement".