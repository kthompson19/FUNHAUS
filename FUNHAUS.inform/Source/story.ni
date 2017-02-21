"FUNHAUS" by Keely Thompson

[disable take all, cred: calien]
Rule for deciding whether all includes something: it does not.

[The commands list code, from Assasin.]
The list is a backdrop which is everywhere.

understand the command "commands" as something new. Commanding is an action applying to one thing. understand "commands [things]" as commanding. understand "command [things]" as commanding.

instead of commanding list:
	say "This is a list of commands available in the game. Any other action does not exist. Available shortcuts for commands are in parenthesis. [line break][line break]Commands: North (n), East (e), South (s), West (w), Examine (x), Look (l), Inventory (i), [line break]Break ____ [bold type]with[roman type] ____ , Take ____ , Insert ____ [bold type]into[roman type]____, Press ____, Talk to ____, Fix____ [bold type]with[roman type] ____ , Pepperspray ____.".
	
[new commands, Talking command from Jim Aiken's handbook]
Understand the command break as something new. Breaking is an action applying to two things. Understand "break [something] with [something]" as breaking. 

Understand the command press as something new. Pressing is an action applying to one thing. Understand "press [something]" as pressing.

Talking to is an action applying to one visible thing. Understand
"talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

Understand the command slop as something new. Slopping is an action applying to one thing. Understand "slop [something]" as slopping. [for me to cheat]

Understand the command fix as something new. Fixing is an action applying to two things. Understand "fix [something] with [something]" as fixing.

Understand the command pepperspray as something new. Pepperspraying is an action applying to one thing. Understand "pepperspray [something]" as pepperspraying.
Understand "pepper spray" as pepperspraying.

[when play begins]
When play begins: say "You and your best friend, Jessica, are standing outside the FUNHAUS, an abandoned funhouse located on your local abandoned fairgrounds. She finally talked you into breaking in with her and checking it out. Time to have some fun... [line break][line break]You can view the commands possible in this game at any time by typing 'commands list'."

The player is carrying Pliers and Pepper spray.

[examining player]
Instead of examining player:
	if player is in Fairgroundsroom:
		say "You look great and ready to take on the adventure.";
	otherwise:
		say "You look shaken and a little bit dirty."


[Fairgrounds]
Fairgroundsroom is a room. "It's dark out, and all you can see is the faint outline of a red door with a rickety old sign on top of it. It says FUNHAUS." Printed name is "The Fairgrounds". 

Lock is in Fairgroundsroom. Lock is scenery.

Instead of breaking lock:
	say "You break the lock on the door to the FUNHAUS.";
	Now door1 is unlocked.
	
Instead of going down in Fairgroundsroom:
	say "There's no way to go down here."
	
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
		
Instead of going south in Hallwayroom:
	say "The door slammed behind you with a crash when you walked in. There's no way out here."
		
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
BallPitroom is west of Pinkdoor. Printed name is "The Ball Pit". "You fall of the edge of the doorway into a pit of plastic colored balls. The walls are completely bare except for four colored indentations with a big button next to them." 

Instead of slopping red ball:
	now red ball is in red indentation;
	now blue ball is in blue indentation;
	now yellow ball is in yellow indentation;
	now green ball is in green indentation.
	
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

Instead of going south in creepypaintingsroom:
	say "The piece of the wall is miraculously pushed up back in line with the rest of the wall. You hear a cackle on the other side. Looks like you're not so alone."

CreepyPaintingsroom is north of ballpitroom. "The room's walls are lined with dozens of creepy, nerve-racking paintings. There are ones of clowns, dolls, fake Mona Lisa, and even a ghastly girl standing in a dark forest. Wait, the Ghastly Girl seems to be moving! You can see an exit here to the east." Printed name is "The Creepy Paintings".

Ghastly Girl is a woman in Creepypaintingsroom. "'Hey little one, why don't you come over and talk to me?' says Ghastly Girl.[line break] [line  break] (To talk to Ghastly Girl, simply type 'Talk to Ghastly Girl.')". The description is "Her face is shrouded by her black, stringy hair. She wears a simple but old-fashioned black dress, and she stands in the middle of a dark forest where nothing seems to grow. Who was the madman who thought to paint this one?!"

Instead of talking to Ghastly Girl: [talking blue text with help from Jim Aiken's handbook]
	say "[one of] 'Hey,' you say reluctantly. [paragraph break] 'Hi there, you're new. We don't normally get a lot of visitors around here,' replies Ghastly Girl. (To continue talking to Ghastly Girl, simply type 'Talk to Ghastly Girl OR g'). [or] 'Yeah, well I'm not surprised about that part,' you say with a sigh, looking around the dilapidated room. [paragraph break] 'What's that supposed to mean?! I'll have you know, I actually just saw someone else a few minutes ago, and she was was prettier than you!' Ghastly Girl exclaimed. She looks hurt, like a small child. (To continue talking to Ghastly Girl, simply type 'Talk to Ghastly Girl OR g'). [or] 'Wait, I'm sorry, I didn't mean that,' you hastily apologize. 'Who did you see?' [paragraph break] 'Oh, what's it to you?' Ghastly Girl replies sassily. (To continue talking to Ghastly Girl, simply type 'Talk to Ghastly Girl OR g'). [or] 'I lost my friend and I'm looking for her. Please, it's really important!' you beg desperately. [paragraph break] 'Oh fine, I might have seen the master move a certain rug over in the Bedroom, but I don't know.' (To continue talking to Ghastly Girl, simply type 'Talk to Ghastly Girl OR g'). [or] 'A rug? Some help you are. Whatever.' you reply. [or] You don't want to talk to Ghastly Girl anymore. She's irritating. [stopping]"
	

[Mirror Room]

Mirrorsroom is east of Bluedoor. "You walk into the room and the walls are lined with funky, light-bending mirrors. Obviously, they haven't seen the light in years. They're completely covered in dust and grime. You can see an exit here to the north." Printed name is "The Mirrors".

Instead of going west in Mirrorsroom:
	say "The door slammed shut when you walked in and is locked now. You hear a cackle on the other side. Looks like you're not so alone."
	
[Arcade Room]

Arcaderoom is north of Mirrorsroom and east of RusticBedroom. "The walls are dingy and old. There's a ping pong table in the northeast corner, some sort of Gorilla Game in the southeast corner, and a Whac-a-Mole game on the west wall." Printed name is "The Arcade".

Whacamole is scenery in Arcaderoom. The description is "An old Whac-a-Mole game. It seems to be placed in an odd area, covering a part of the wall. It looks like it's broken and missing a few parts. It must need to be fixed." Whacamole can be broken or not broken. Whacamole is broken. 
Understand "Whac-a-Mole" as Whacamole.

Gorillagame is scenery in Arcaderoom. The description is "It's some sort of pinball game where you have to get the banana to the gorilla. Interesting."
Understand "Gorilla Game" as gorillagame.

Banana is scenery in Arcaderoom. The description is "The gorilla wants it, I guess."

Gorilla is scenery in Arcaderoom. The description is "He wants his banana."

Pingpongtable is scenery in Arcaderoom. The description is "An old ping pong table. The actual table part is an off-white color, aged from the years of neglect. There's the normal stuff a ping pong table has, two paddles, a ball, and one of those ball holder things."
Understand "ping pong table" as pingpongtable. 

pingpongball is an object in arcaderoom. pingpongBall is undescribed. The description is "Just a white ping pong ball. Looks un-bouncy.".
understand "ball" as pingpongball.

Paddles is an object in arcaderoom. paddles is undescribed. The description is "Your standard red ping pong paddles."

Ballholder is an open container in arcaderoom. Ballholder is undescribed. The description is "A built in holder for ping pong balls. Looks like there's something shiny in here..."
Understand "ball holder" as ballholder.

Wrench is an object in ballholder. Wrench is undescribed. The description is "A typical wrench used for fixing things."

After taking wrench:
	say "Taken.";
	Now description of ballholder is "A built in holder for ping pong balls."
	
Instead of fixing whacamole: [how to make sure whacamole can only be fixed with wrench]
	If the second noun is wrench:
		say "The Whac-a-Mole machine whirs to life and goes crazy! The moles are popping up and down out of their little holes. Finally, the whole machine slides to the right revealing an exit to the west.";
		Now whacamole is not broken;
	Otherwise:
		say "That's hardly the right tool to fix this with.".

Instead of going east in Arcaderoom:
	if Whacamole is not broken:
		move player to Rusticbedroom;
	Otherwise:
		say "There's no way to go east right now."
		
[Rustic Bedroom]

RusticBedroom is east of CreepyPaintingsroom. "You walk into a bedroom that seems completely out of place in the FUNHAUS. It has red walls and a large bed with a rich brown colored oak headboard. There's a brown oak table by the bed with a vase on it and a big tapestry-like rug in the middle of the room. You can see an exit here to the west." Printed name is "The Rustic Bedroom". 

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

Rug is an object in rusticbedroom. Rug is undescribed. The description is "The rug has very small and intricate red and gold detailing all over it. It looks like it's a little crooked, like it's been moved recently." The rug can be pushed or not pushed. The rug is not pushed. [how to do condition]
Understand "big rug" as rug.
Understand "big tapestry-like rug" as rug.

After pushing rug:
	say "You move just a corner of the rug up and discover that the floor underneath it is a much darker shade of wood than anywhere else in the room. You move the rug completely out of the way revealing a trapdoor!";
	now the rug is pushed.
	
Instead of going down in Rusticbedroom:
	If rug is pushed:
		move player to basementroom;
		say "After you jump down through the trapdoor, you see Jess in the corner of the dark room tied up! The clown doesn't seem to be around right now, hurry!";
	otherwise:
		say "There's no way to go down right now."

[Basement]
Basementroom is below RusticBedroom. Printed name is "The Basement". "A dark room with cement walls and floors. There's hardly any furniture in here except for a shelf on the west wall. There's an exit to the south."

Knife is an object in basementroom. knife is undescribed.

Rope is an object in basementroom. rope is undescribed.

Instead of breaking rope:
	If second noun is knife:
		say "You cut through the rope binding her wrists with the knife. [paragraph break] To talk to Jess, simply type 'Talk to Jess'.";
		now Jess is untied;
	otherwise:
		say "You can't break the rope with that."

Jess is a woman in Basementroom. "'Oh my god, you found me! Help!' exclaims Jess. [line break] [line break] (To talk to Jess, simply type 'Talk to Jess'.)" The description is "She looks pretty much the same as she did before you guys set out on your adventure, just a lot more shaken up and terrified." Jess can be untied or tied. Jess is tied.

Instead of talking to Jess:
	if Jess is tied:
		say "[one of] 'Jess! Are you okay?' you ask. [paragraph break] 'I'm okay, we have to 	get out of here! The clown left, but he'll be back soon...' she replies with fear shaking her voice. (To continue talking to Jess, simply type 'Talk to Jess' OR g.) 	[or] 'Okay, but you're tied up!' you exclaim. [paragraph break] 'Yeah, I guess you 	have to find something to break the rope,' she says. [stopping]";
	otherwise: 
		say "'Oh, finally! My wrists feel so much better now, let's get out of here!' Jess exclaims."
		
Instead of going south in Basementroom:
	if Jess is untied:
		move player to Secretpassagewayroom;
		move Jess to Secretpassagewayroom;
		say "You run into the Secret Passageway and are met with a cackle and the white-faced, red-nosed clown that has been tormenting you all night! He's blocking the only way out and up back to freedom!";
	otherwise:
		say "You can't leave without Jess!".

[Secret Passageway]
Secretpassagewayroom is south of Basementroom and below fairgroundsroom. Printed name is "The Secret Passageway". "A barren passageway with a trapdoor on the ceiling leading to the outside world."

Instead of going north in Secretpassagewayroom:
	say "The basement door slammed closed as you ran in. You're stuck here with the clown until you can find a way around him."
	
Clown is an object in Secretpassagewayroom. Clown is undescribed. The description is "sfhioek." Clown can be peppersprayed or not peppersprayed. Clown is not peppersprayed. 

Instead of going up in Secretpassagewayroom:
	if clown is peppersprayed:
		move player to Fairgroundsroom;
		say "You climb up through the trapdoor and find yourself back outside! You're out of that god-awful FUNHAUS and you're never going back again. Freedom!";
		end the story finally;
	otherwise:
		say "The clown is still blocking your way out!".