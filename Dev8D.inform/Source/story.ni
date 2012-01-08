"Dev8D" by "Ben O'Steen"

Use the serial comma.

Include Keywords for Conversation by Matt Wigdahl.
Include Exit Descriptions by Matthew Fletcher.

The release number is 1. The story creation year is 2012. The story headline is "A day at Dev8D". The story genre is "Serious Game". The story description is "A mock-up of what the beginning of the Dev8D event might be like."

Part 1 - Groundwork

Chapter 1 - Help

Understand "help" as Boilerplatehelp.

Boilerplatehelp is an action out of world.

Report Boilerplatehelp:
	Print Basic Help.

To Print Basic Help:
	say "For those new to text adventures - Don't Panic! It's quite simple, once you get comfortable and learn that the flashing cursor is your friend.[paragraph break]All the action takes place in rooms. You can move from one room to another with a simple command like [fixed letter spacing]Go north[variable letter spacing] or even just [fixed letter spacing]n[variable letter spacing]. The game doesn't really care about the case of commands, so don't worry about that either. Many help pages online will use CAPITAL LETTERS to show things you type in, but it doesn't affect anything to use lower or even mixed-case.[paragraph break]Moving within a room isn't necessary - you don't need to approach a buffet table to take something from it - the game handles that sort of thing for you. Stick to short english commands and if you can see it, you can interact with it.[paragraph break]Compass directions are used to move around but the exits from a room are listed in this game, so you shouldn't have to make any maps. In fact, as this is based on the ULU venue itself, you might find decent maps of the place online![paragraph break]Try to interact with your surroundings, for example:[line break][fixed letter spacing]> EXAMINE TABLE[line break]> ASK BEN ABOUT PROGRAMMING LANGUAGES[line break]> DRINK COFFEE[line break]> READ FLYER[line break][variable letter spacing] and of course[fixed letter spacing][line break]> GET LAMP[variable letter spacing][paragraph break]Other words to try:[fixed letter spacing][line break]PICK UP, PUT, DROP {something}, GET {something}, TAKE{something}[line break]LOOK or EXAMINE {something}[line break]INVENTORY[line break]WAIT or Z[paragraph break][variable letter spacing]Many commands have abbreviated forms. You can use 'X' instead of 'EXAMINE', 'I' instead of 'INVENTORY', and the short-forms of the compass directions ('s','se', etc) to 'GO' in that direction.[paragraph break]"

Chapter 2 - Misc simple actions and overrides

[point tracker]
A thing can be used or unused. A thing is usually used.

[additional actions]
Coding is an action applying to one thing. Understand "code [something]" or "program [something]" as coding.

Licking is an action applying to one thing. Understand "lick [something]" as licking.

Instead of licking something:
	say "You really, really, REALLY don't want to do that. Just think of the germs!"

[Oblig XYZZY]

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy.

casting xyzzy is an action applying to nothing.

Report casting xyzzy:
	say "You close your eyes and gather your thoughts. You enunciate each syllable of the incantation well, only struggling to pronounce the second z clearly. [paragraph break]You open your eyes, finding yourself to be exactly where you where. It is clear, however, that there are fewer people around you. You hear the slam of doors in the distance." 

Chapter 3 - Noise/audio and smell

A thing has some text called sound. The sound of a thing is usually "silence".

A thing has some text called smell. The smell of a thing is usually "nothing".

The block listening rule is not listed in the check listening to rules.
The block smelling rule is not listed in the check smelling rules.

Carry out listening to something: 
	say "[the sound of the noun]."

Carry out smelling something:
	if the noun is odourless:
		say "You can't smell anything.";
	otherwise: 
		say "[the smell of the noun]."
	
Instead of listening to a room:
	if an audible thing can be touched by the player, say "You hear some sounds in this room, but you can't make out what is causing it."; 
	otherwise say "Nothing of note."

Definition: a thing is audible if the sound of it is not "silence".

Definition: a thing is odourless if the smell of it is "nothing".

Before printing the name of something audible while listening to a room: 
	say "[sound] from the "

Chapter 4 - Hacker person setup

A hacker is a kind of person.

A hacker is either hungry, sated, interested, hacking, or talking.
						
The smell of a hacker is usually "Considering how poorly ventilated the rooms are here, you decide not to"

The hacker behavior rules is a rulebook producing an object.

A hacker behavior rule when the hacker (called thishacker) is in an adjacent room and thishacker is interested:
	say "[thishacker] has followed you here to continue on your conversation.";
	move thishacker to the location of the player;
	rule succeeds with result nothing.	

A hacker behavior rule when the hacker (called thishacker) is in the Basecamp and thishacker is not sated:
	say "[one of][thishacker] spots the tasty muffins on display and grabs one for later.[or].[at random]";
	rule succeeds with result nothing.

Every turn:
	let the destroyed object be the object produced by the hacker behavior rules;
	if the destroyed object is not nothing:
		remove the destroyed object from play;
		say "Now [the destroyed object] is gone.".

Greeting response for a hacker:
	say "You address the coder.  'Hi!'[paragraph break]'Hello!  What do you want to talk about?'";

Implicit greeting response for hacker (called thishacker):
	say "They turn to face you at the sound of your voice.";

Farewell response for the hacker:
	say "'Bye!'[paragraph break]";

Implicit farewell response for a hacker (called thishacker):
	say "They turn back to the glow of the laptop's monitor as the conversation lapses.";

Default response for a hacker:
	say "'Er... what?";
	show topic suggestions implicitly;

Chapter 5 - Conversation topics

Python is a unfamiliar thing. It is unused.

[crypto challenge]
Codebreaking is a unfamiliar thing.
Caesar cipher is a familiar thing.
Advanced crypto is a familiar thing.
ROT code is an unfamiliar thing.
Rickroll and piano cat are unfamiliar things.

Understand "crypto/cryptography/code-breaking/cipher/frequency analysis/code breaking/breaking code" as Cryptography.

Ruby is a unfamiliar thing.
Redis is a unfamiliar thing.
Git is a unfamiliar thing.
JQuery is a unfamiliar thing.
Javascript is a unfamiliar thing.
Lightning talk on cryptography is an unfamiliar thing.
WiFi is a familiar thing.
ARDrone is familiar.

3D_printing is a familiar thing.
Understand "3D printing" or "3D printers" as 3D_printing. The printed name of 3D_Printing is "3D Printing". 

Programming languages is a familiar thing.
Understand "programming languages/language/languages/coding" as Programming languages.

Chapter 6 - Under and hiding

Underlying relates various things to one thing. The verb to underlie (he underlies, they underlie, he underlaid, it is underlaid, he is underlying) implies the underlying relation. The verb to be under implies the underlying relation. The verb to be beneath implies the underlying relation.

Instead of looking under a thing which is underlaid by something (called the lost object):
	say "You find [the list of things which underlie the noun]!";
	now every thing which underlies the noun is carried by the player;
	now every thing which underlies the noun does not underlie the noun.

Hiding it under is an action applying to one carried thing and one thing. Understand "put [something preferably held] under [something]" as hiding it under. Understand "hide [something preferably held] under [something]" as hiding it under. Understand the commands "shove" and "conceal" and "stick" as "hide".

Check hiding it under:
	if the second noun is not fixed in place, say "[The second noun] wouldn't be a very effective place of concealment." instead.

Carry out hiding it under:
	remove the noun from play;
	now the noun underlies the second noun.

Report hiding it under:
	say "You shove [the noun] out of sight beneath [the second noun]."

Part 2 - Game Setting

Chapter 1 - Scenes and scene logic

When play begins:
	say "Despite Tfl's best efforts, you've made it to Russell square tube station only slightly behind schedule. You're a short walk away from the Developer Happiness Days event, aka Dev8D. It's taking place in the University of London Union (ULU) building and, if it is anything like it was last year, it will not only be great fun, but you'll meet plenty of new people, be introduced to new and exciting software and even learn a few fresh tricks about dealing with the software you are already using.[paragraph break]You walk out from Russell Square station and load up the directions to the ULU entrance. You walk along for a few minutes, staring down, tracking your progress with your phone. It isn't long before you approach the front door and have to pass by the throng of [smoking students] to walk inside.";
	[some item setup]
	remove the master sword paper strip from play;
	remove the refreshments table from play;
	remove the Basecamp schedule board from play.

Getting Ready is a scene. Getting Ready begins when play begins. Getting Ready ends when Orientation Talk begins.

Orientation Talk is a scene. Orientation Talk begins when the player is in the Basecamp and Orientation Talk has not ended.

Event Starts is a scene.

Every turn during Orientation Talk:
	repeat through Table of Orientation Speech:
		say "[event entry][paragraph break]";
		blank out the whole row;
		rule succeeds.

Orientation Talk ends when the number of filled rows in the Table of Orientation Speech is 0.

Event Starts begins when Orientation Talk ends.

When Event Starts begins:
	remove the crowd of people from play;
	move the basecamp schedule board to Basecamp;
	move the refreshments table to Basecamp;
	try looking.

Instead of going to Work rooms when the player does not hold the Dev8D lanyard during Getting Ready:
	say "You should really head to the Basecamp room before it's too late!"

Instead of going to Work rooms when the player does not hold the Dev8D lanyard:
	say "You need to register before you get too distracted by what is going on!"	

Instead of doing something other than waiting or examining during Orientation Talk:
	say "You should listen for a little while. It's only polite after all. (Type 'wait' or 'z' to skip on through the speech.)"

Every turn when the player is in the Region Stairwell during Event Starts:
	if a random chance of 1 in 15 succeeds:
		say "[wandering monster attack]" [Ah, Final Fantasy III ;)]
		
Every turn when the player is in the Zone of Corridors:
	if a random chance of 1 in 6 succeeds:
		say "[wandering monster attack]"

to say wandering monster attack:
	say "[one of]A small group of students, talking loudly, pass you on their way to the stairs[or]You hear part of a conversation but can't work out where it is coming from. '... after lunch. I'll see you at the Computer vision session then? It'll b...' The conversation gets lost in the noise[or]'Watch out!' shouts a voice behind you. You turn and push yourself against the wall as someone rushes past you, holding a handful of flipcharts, a bag of pens and other bits and pieces. He drags several power strips behind him. He disappears out of sight[or]Some women walk past, each carrying a laptop bag and wearing the [Dev8D lanyard]. You overhear their conversation as they pass.[paragraph break]'... Have you put anything up for the evening slots yet?' says one of the women.[paragraph break]'Not yet. I'm thinking of putting my name down for a library-tech birds of a feather. What do you think?' the other replies[paragraph break]'Sure, but make it an MLA meetup instead and I'll...'[or][paragraph break]Someone coming out of a door allows you to catch part of the conversation going on inside: '...going to the javascript and jQuery workshop tomorrow, definitely! I've been putting off learning javascript properly for too long...'[then at random]."

Table of Orientation Speech
event
"It seems that things are just about to start, so you press forward to get a decent enough view. You manoeuvre through the throng of developers, hackers, academics and other delegates as politely as you can until you manage to get a view of the organiser who is just about to speak.[paragraph break]'Welcome! Thank you all for coming to this, the [italic type]fourth[roman type] Dev8D! Yes, fourth! I'm so glad to see lots of new faces out there, standing amongst the faces I already know well! You know, helping people meet up and talk about the things that interest or even stump you is one of the key reasons this event exists. Many of you work in small teams and can feel isolated. Sometimes you alone are the team!'[paragraph break]You hear quite a few knowing laughs from the people in the crowd. Seems you aren't alone here after all[if player holds the master sword paper strip]. (Maybe you should put that master sword back where you found it, eh?)[end if]."
"He continues: '"
"If you haven't yet registered and picked up your Dev8D lanyard[make lanyard familiar], please do so as soon as you can - it has your name on it!"


Chapter 2 - Random things (Food, etc)

A Food is a kind of thing. Foods are edible and portable.
A drink is a kind of food.

Instead of eating a drink (called thisdrink):
	say "[first time]You spill quite a bit of [thisdrink] down your front as you bite and chew into the paper cup. [only]You attempt to drink [one of]it[or]the [thisdrink][stopping] instead. [one of][or]Remember what happened last time.[stopping]";
	try drinking thisdrink instead.

Instead of drinking a drink (called thisdrink):
	say "You take a long slurp of [thisdrink]. [one of]Lovely, lovely [thisdrink]. Perfect. [or]Still hot too! [or]You savour the [thisdrink], drinking it slowly. [or]Ah... just what you needed. [at random][first time]It's a shame the cups are so small![only]";
	move thisdrink to the refreshments table.

A Muffin is a kind of food.

The smell of a Muffin is usually "[one of]Lovely[or]Gorgeous[or]Smells like sugary goodness to you[at random]"

A blueberry muffin is a muffin. The description of a blueberry muffin is usually "A blueberry muffin." 
A chocolate muffin is a muffin. The description of a chocolate muffin is usually "A triple-chocolate muffin." 
A lemon muffin is a muffin. The description of a lemon muffin is usually "A zingy lemon muffin." 
A plain muffin is a muffin. The description of a plain muffin is usually "A plain bran muffin. (Boring)" 

coffee, and tea are proper-named drinks.

The smell of coffee is "[one of]It smells like coffee. No surprise there[or]Even though it is cooling down, the coffee fumes still have that warming smell to them[or]Ah... who doesn't like that smell?[at random]"

The smell of tea is "[one of]Nothing relaxes you more than the smell of a good cup of tea[or]Strong, sweet tea. Unmistakeable[at random]"

Chapter 3 - Regions

Zone of Corridors is a region. Corridor - East, Corridor - Middle, Corridor - West, and Corridor - Westmost are in Zone of Corridors.

Region Stairwell is a region. Ground floor stairs, First floor stairs, Third floor stairs are in Region Stairwell.

Event Area is a region. Work Rooms is a region. 

The Venue, 3A, 3B, 3C, 3D, and 3E are rooms in Work rooms. Basecamp and Work rooms are in Event Area. 

Chapter 4 - Stairwell and entrance rooms

Section 1 - ULU Entrance

The player is in ULU Entrance. [Start game here]

ULU Entrance is a room. "[if unvisited]You look around the foyer, scanning across the faces of the various students sat, engrossed in their laptops. You notice a small A4 [sign for Dev8D] on the north wall. To the west is a [snack shop], selling all sorts of sweets, sandwiches and hot drinks. At least, it would be if it were open. There is a [small lift] to the north, but that is being used to take [boxes of drinks] upstairs. A lot of drinks.[otherwise]The shop is still closed it seems and the Sisyphean challenge of keeping the bar stocked with booze and J20 is still ongoing. Students are quietly working and chatting in the seated area.[end if]" 

[table props]

The dusty table is in the ULU entrance. The old lamp, the plastic arrow, the red fish, and the shiny red keycard are on the dusty table. 

The description of the dusty table is "You see an unmanned trestle table sagging with the weight of a huge pile of flyers. Someone has attempted to make the table and everything on it look old and dusty, but with the handicap of using only [glitter], [tinsel] and [coloured paper].[paragraph break][if the old lamp is on the dusty table]Nestled amongst the flyers, is an [old lamp]. Unlike most of the other items on the table, the lamp looks old simply because it is. [end if][if the plastic arrow is on the dusty table]For some reason, a slightly warped [plastic arrow] is also on the table, positioned as if it is important. There is a [red fish] almost buried in glitter next to it on the table. Why someone would use so much glitter isn't obvious, unless they are doing it as a (thinly-veiled) cry for help. A [shiny red keycard] pokes out from underneath the fish. You note that it has somehow remained glitter-free.[paragraph break]"

The old lamp is unused.

The description of the old lamp is "[one of]It looks like an old Davy lamp, covered with joke-shop cobwebs and glitter. You can't see much past the schmutz at first glance.[or]It looks like it hasn't been lit in very long time. You notice a small plaque around the bottom edge of the lamp[or]You are able to rub some debris from the plaque, revealing this message: 'For use when confronted by a maze of twisty little passages, all alike. (C) 1976'.[or]'For use when confronted by a maze of twisty little passages, all alike. (C) 1976'.[paragraph break](You young whipper-snappers probably have no idea what this means, do you?! Young people, *sigh*)[stopping]"

The description of the plastic arrow is "[one of]A toy arrow that might be made out of a spongy plastic foam, like that used to cover bats to make them 'safe'. It's a dismal grey in colour, with a few dark squiggles along one side.[or]You look at the dark squiggles more closely. You discover that if you angle yourself just so that you can make out the faded words that run along one side of the arrow: [paragraph break][bold type]Guaranteed to kill 99.9% of grues![line break][italic type](Note: Dye used in this recreational toy is toxic. Not safe for children under 3 years of age. Does not kill grues. Use at own risk.)'[roman type][stopping]."

Instead of doing something other than examining the arrow:
	say "Ew. The plastic is tacky and looks like it is decomposing from age. You'd rather not do that at all."

The description of the shiny red keycard is "[one of]A shiny, laminated keycard. Oh, and it's also red, which is probably important[or]A red, shiny keycard[stopping]."

Instead of pulling the shiny red keycard:
	try taking the keycard instead.

Instead of taking the shiny red keycard:
	say "[one of]Really? You think that stealing that is going to help you later? [if player holds the old lamp]I mean, taking that lamp is one thing, but come on...[end if]That keycard belongs to someone. It's probably their library card or something[or]No[or]*sigh*[or][bold type]THIEF! Stop THIEF![roman type][paragraph break](No, not really, but you need to curb that kleptomania before you start hearing this on a regular basis)[stopping]."

The smell of the shiny red keycard is "You try to smell the keycard, but it's too close to the rotting fish for you to smell anything else. It probably smells like its owner's wallet anyhow. [paragraph break]Well, it did until it was pushed underneath that fish"  

The description of the red fish is "Fishy and obligatory. You notice that it is also red underneath all that glitter." 

Instead of taking the red fish:
	say "[one of]This is not useful. Honest.[line break][or]It's red and a fish. That should be hint enough.[stopping]"

The sound of the fish is "... you hear nothing from the fish. (You are thankful it didn't start singing 'Here is a little song I wrote...' as you would've had to destroy it, to preserve the sanity of all around you.)"

The smell of the red fish is "Awful. Just... awful. And now you have got glitter on your cheek. Congratulations."

The red fish, the plastic arrow and the shiny red keycard are fixed in place.

The sound of the lamp is "a faint noise... the word 'xyzzy' crosses your mind but you don't know why."

Instead of switching on the lamp:
	say "That's not going to happen. You are in a brightly-lit area with no need for extra light. Besides, you have no fuel and nothing to lit it with."

Instead of rubbing the old lamp:
	if the old lamp is unused:
		say "Rubbing [the old lamp] is not particularly rewarding. Anyway, nothing exciting happens (aside from your hands getting covered in fake spider web, but you tried, and that's the main thing!)";
		award 1 point;
		now the lamp is used;
	otherwise:
		say "[one of]Rub me once, get a point for free. Rub me twice, no more points for you. Greedy.[or]Look, there's no genie here so quit it.[or]Go on, keep rubbing. See if I care.[stopping]"

Every turn when the player holds the old lamp:
	If old lamp is held for at least five turns:
		say "[one of]'Hey!' An angry man shouts out at you. 'That's my lamp! What the hell do you think you are playing at? Give it here!' He snatches the [old lamp] from you, and looks like he is about to erupt. Eventually, he gets himself under control and just shakes his head in frustration at you and stalks off, the lamp swinging beside him.[or]You are tapped on the shoulder twice, with some force behind each tap. [paragraph break]You turn round to see the angry man from before 'You again?' he says 'That lamp is an heirloom, it's not worth anything to anyone but me, so leave off!' He grabs the lamp and walks off[or]You are slammed to the floor by something big. You roll over but see nothing.[stopping]";
		move the old lamp to the dusty table. 

Rule for writing a paragraph about the dusty table:
	say "[a description of the dusty table]".

[under the table]

The hidden-under-the-table notice underlies the dusty table. The description of it is "'The Desk of Obligatory Tropes'[line break]	by Roy G. Biv.[if hidden-under-the-table notice is unused][paragraph break](Ah, go on. Have a point.)"

The hidden-under-the-table notice is unused.

After examining the hidden-under-the-table notice when the hidden-under-the-table notice is unused:
	award 1 point;
	now the hidden-under-the-table notice is used.

[dusty table scenery]

Smoking students, small lift, laptop students, sign for Dev8D, boxes of drinks, snack shop, glitter, joke cobwebs, tinsel and coloured paper are scenery in ULU Entrance.

The description of the sign for Dev8D is "The sign poster has the familiar orange logo for Dev8D on it, complete with smilie, and an arrow pointing up. Simple and to the point."

The description of laptop students is "You look around the room. Most of the tables are taken up by young people, undoubtedly students, talking, working or otherwise quietly reading. You probably shouldn't disturb them."

The sound of the laptop students is "You hear the clack of fingers meeting keys, the murmur of quiet chatter and the occasional stifled laugh. Presumably, Lolcats are involved at some point."

The description of the boxes of drinks is "Piles of soft and alcoholic drinks, likely being taken upstairs to restock the bars. It looks like it will be some time before the lift will be free again."

The description of the snack shop is "A shop that sells snacks. And drinks. When it is open. Which it is not."

The description of the small lift is "Half-full with boxes, with a key in the lift's panel stopping the door's closing and the lift moving. This isn't going to be usable any time soon."

The description of the joke cobwebs is "Looks like someone got a bag of cotton wool and stretched it out into strands. Oh, and oh course, [glitter] is involved too."

The description of the smoking students is "You look at the students stood outside the entrance. Many have lit cigarettes held with different and considered poses - the artist, the fashionista, the emo and more. Those that do not are either using their phones, chatting or standing around waiting for a cigarette to be offered to them."

The description of glitter is "Glitter. Wonderful. You look forward to finding little pieces of this stuck to you for many days to come."

The description of tinsel is "An unpleasant and cheap-looking survivor of many previous Christmas holidays. It runs along the edges of the table in an misguided effort to make it look more festive. Just by looking at it, you die a little inside."

The description of coloured paper is "It's amazing what an artist can capture with just some scissors, glue and coloured paper. The person who decorated this table was no artist. They may not have even been sober."

The retro-game flyer pile is a fixed in place thing on the dusty table. The description of the retro-game flyer pile is "A stack of small pamphlets about the history of what it calls 'Interactive Fiction' games. Less point-and-click and more guess-the-verb in your opinion."

A poorly printed flyer is in flyer limbo. The description of the poorly printed flyer is "[one of]The title of the flyer is '[bold type]GET LAMP[roman type] - Interactive fiction in the 21st century!'. Further down the page you see an apology for stealing the flyer's title from 'Jason's (@textfiles) awesome upcoming documentary, can't wait!!!'. Hmm.[or](An uninspiring photo of a smartphone running some sort of terminal application.) You guess this must be interesting for some reason you cannot fathom as the caption text under it uses a lot of exclamation marks.[or]'Our Favourite Interactive Fiction games! (Check them out on IFDB) [paragraph break] - Blue Lacuna by Aaron A. Reed (Phenomenal!!)[line break] - Any and all of the Zork games[line break] - Vicious Cycles (http://bloomengine.com/cycles)[line break] - Photopia by Adam Cadre (strange and beautiful!)[line break] - Galatea by Emily Short[line break] - Ecdysis by Peter Nepstad (Very Non-PG Lovecraftian horror!)[line break] - Lost Pig by Admiral Jota (Grunk catch pig!)[line break] - Bronze by Emily Short (Emily again)[line break] - Collosal Cave Adventure (a classic!!)[line break] (... the list goes on for most of a page, with names like Emily Short, Adam Cadre, Andrew Plotkin and Aaron Reed reoccurring a few times.) [or]You read a passage about how graphical interfaces destroy the imagination in children and adults. You stifle a laugh, knowing that whoever wrote this likely made it using MS Word. Mainly because of the overuse of Papyrus, Comic-sans and *scoff* Ariel.[line break] (However, the fact that you can recognise Ariel at all when it is printed small and on a cheap flyer gives you some pause for thought.)[cycling]"

Understand "flyers" or "game flyers" or "pile of flyers" as retro-game flyer pile.

The printed name of the retro-game flyer pile is "pile of flyers".

Instead of taking the retro-game flyer pile:
	if the player does not carry the poorly printed flyer:
		move the poorly printed flyer to the player;
		say "You take one of the folded flyers from the over-flowing stack.";
	otherwise:
		say "You shouldn't take more than one, no matter how many there are here. These have obviously been printed on a student's budget!"

test table with "look/x table/x glitter/ x coloured paper/x tinsel/x retro-game flyers/take flyer/x flyer/x flyer/x flyer/x flyer/x students/x keycard/take keycard/take keycard"

test lamp with "x lamp/x lamp/x lamp/x lamp/take lamp/rub lamp/rub lamp/rub lamp"

[Stairwell rooms]
Section 2 - Ground floor stairs

To say generic stairwell desc:
	say "[one of]In the low-light of the stairwell, you see a set of sharp-angled stairs spiralling upwards, fenced in by a utilitarian handrail, supported by thin banisters. The parts of the walls you can see are the kind of beige colour that cannot be described accurately without the words 'institutional' and 'depressing'. It won't be how the colour is officially labelled, but labels are rarely honest[or]A spiralling staircase, hemmed in by harsh railings and beige walls[stopping]. The noise from the rest of the building provides a background hum of activity"

Ground floor stairs is north of ULU Entrance. "[generic stairwell desc]. [paragraph break]The only way is [one of]UP! (or something like that.)[or]up the stairs, or south, back to the entrance.[stopping] [paragraph break]There is a message board lining the walls of the stairwell."

The sound of the Main Stairwell is "Chattering voices from all floors are funnelled and compressed together with the footsteps of people in this stairwell. The sounds bounce and rebound along the walls, turning into a generic murmur of activity, with no one sound being distinguishable from the next."

The Main Stairwell is a backdrop. The Main Stairwell is in Region Stairwell.

Understand "stairwell" as Main Stairwell.

Ground-floor message board, Zelda poster, and miscellaneous student posters are scenery in Ground floor stairs.

Understand "take zelda poster" or "take poster" or "take board" or "take message board" as a mistake ("You'd better not do that. You don't want to be thrown out for removing posters. At least, not until you've been at the event for a while.").

Understand "message board" or "poster board" as Ground-floor message board

The description of the Ground-floor message board is "A number of panels of dark gray message board, covered with [miscellaneous student posters] about society events, music parties, and sports. There are a few odd posters stuck up here too, you notice a poster sporting what looks like 8-bit Zelda graphics."

The description of the Zelda poster is "The sheet is a scene from the very first Zelda game. Above an old man who is standing between two bright red blocky fires is text that reads: 'It is dangerous to go alone. Take this!'. The bottom of the sheet has been cut into little strips that you can pull off. Printed onto each is an orange sword, the master sword from the game. [paragraph break]Neat." 

The master sword paper strip is unused.

The description of the Master sword paper strip is "On one side of the strip of paper is a picture of the cute, orange, pixellated Master sword, exactly like the sword sprite used in the first Zelda game[if master sword paper strip is used]. On the reverse side is where Dave wrote the password to the wireless[end if]."

The description of the miscellaneous student posters is "It looks like someone loaded a shotgun with dozens of fonts, colours and jarring designs and shot it repeatedly at the wall. [paragraph break]There are party flyers advertising certain DJs playing in certain venues which, as you have no idea who the DJs are, fails to get you interested. You see some notices about various sports clubs, at which point your eyes glaze over and involuntarily, you start to read from the next poster, which seems to have something about student welfare on it. None of the posters seem to contain important information. Only the strange zelda poster that you noticed before that is of interest to you."

After examining the zelda poster:
	if the master sword paper strip is off-stage:
		now the master sword paper strip is on-stage.

The master sword paper strip is in Ground floor stairs.

Instead of taking or pulling the master sword paper strip in Ground floor stairs when the master sword paper strip is in Ground floor stairs:
	if the master sword paper strip is not handled:
		say "Even though It's not [italic type]that[roman type] dangerous to go alone, you tear the strip from the bottom of the poster. [paragraph break]Scaredy cat.";
		move the master sword paper strip to the player;
	otherwise if the master sword paper strip is in Ground floor stairs:
		say "Taken.";
		move the master sword paper strip to the player.

test 1Fstairs with "x board/x message board/x strip/x miscellaneous posters/x poster/x zelda poster/x strip/take strip/x stairwell/listen to stairwell/take strip/drop strip/take strip".

Section 3 - First floor stairs

First floor stairs is above Ground floor stairs. "[generic stairwell desc].[paragraph break]You see that the Gallery bar is north through the double doors[if unvisited], but now is no time to take a drink[end if]. You can go down to the ground floor or up a few flights to the third floor[if unvisited], which is where most of Dev8D will take place[end if]."

Section 4 - Third floor stairs

Third floor stairs is above First floor stairs. "[generic stairwell desc].[paragraph break]"

[1F rooms - Gallery room, The Venue and the Duck and Dive restaurant.]

Chapter 5 - 1F rooms

Section 1 - Gallery bar

The Gallery is north of First floor stairs. "GALLERY DESCRIPTION."

Section 2 - The Venue

The Venue is west of the Gallery. "VENUE DESCRIPTION."

The ARDrone is in The Venue. The description of the ARDrone is "A small helicopter, well, a quadrocopter given that it has four blades." 

Dave Tarrant is a male hacker in The Venue. Dave Tarrant is hacking.

Understand "Dave/David" as Dave Tarrant.

Section 3 - The Duck and Dive Bar

The Duck & Dive Bar is south of First floor stairs. "Duck and Dive bar description."

[3F rooms]

Chapter 6 - 3F rooms

Section 1 - Corridor and registration desk

The Corridor - Middle is south of Third floor stairs. "REGISTRATION DESK CORRIDOR."

The registration desk is scenery in the Corridor - Middle. "Registration desk desc."

The Corridor - East is east of the Corridor - Middle. "corridor east."
The Corridor - West is west of the Corridor - Middle. "corridor west."
The Corridor - Westmost is west of the Corridor - West. "BASECAMP CORRIDOR."

Section 2 - Event room - corridors and generic setup

The description of a room is usually "ROOM GENERIC DESCRIPTION."

3D is southwest of Corridor - Middle. Corridor - Middle is north of 3D.

3C is southeast of Corridor - Middle. Corridor - Middle is north of 3C.

3A is southeast of Corridor - East. Corridor - East is north of 3A.
3B is southwest of Corridor - East. Corridor - East is north of 3B.

3E is south of Corridor - West.

Section 3 - Room Generics (backdrops, etc)

The developers are a backdrop. The developers are in Event Area.

The description of the developers is "[one of]You see two people sat in front of a single laptop. One of them is typing on it while listening to the other, who is advising him on what to do. You overhear small snatches of their conversation, enough to understand that the one typing is getting hints on how to plug some security holes in his Apache setup[or]A loud buzzing sound breaks the quiet and is quickly followed up by laughter and cheering. You turn to see that a small crowd of people are huddled around an arduino board, which has been connected up to some sort of contraption. You overhear one of the crowd saying 'Quick, tweet it again!'. You turn back to what you are doing as the buzzer goes off for the second time[or]On one table, you see someone chatting to a small group of others, gesticulating towards a large diagram they've stuck to the wall. From what you can make out, she is explaining how she has been using message queueing in her services[or]Someone waves at you. At least, you thought they were waving at you. You take a better look and spot the Kinect camera sitting in front of them. All that hand-waving has a purpose, it seems[or]You peer over the shoulder of a particularly busy developer and catch a glimpse of a some sort of data visualisation she's been working on. You make a note to talk to her about it later on[or]You catch sight of a couple of developers having a heated, but friendly argument. The discussion goes back and forth for a little while, until someone interrupts them and says 'Oh god, not this flame war again.' They pause briefly until one of them starts the argument rolling again with an obviously inflammatory 'But it's so much nicer to use!' comment[in random order]."

Section 4 - Room 3A

The description of 3A is "3A DESCRIPTION."

Section 5 - Room 3B

The description of 3B is "3B DESCRIPTION."

Section 6 - Room 3C

The description of 3C is "3C DESCRIPTION."

Graham Klyne is a male hacker in 3C. Graham Klyne is hacking.

Understand "Graham" as Graham Klyne.

Section 7 - Room 3D

The description of 3D is "3D DESCRIPTION."

The large Project room desk is a supporter in 3D.

The whirring laptop is on the large Project room desk. The description of the whirring laptop is "This poor machine is obviously doing 8 things at the same time from the noise it's making. That, or just that it really needs to be cleaned[if the strange code fragment is handled]. You recognise a logo on the screen as being the same as that you found on the code fragment[end if]."

Ben O'Steen is a male hacker in 3D. Ben O'Steen is hungry.

The description of Ben O'Steen is "[first time]Sat in front of a creaking, straining but mainly loudly [whirring laptop] is a large, bearded man. He'd be sitting perfectly still if it wasn't for his hands moving back and forth across the keys, occasionally moving to slam repeatedly down on the 'delete' key. [only]His nametag reads: [paragraph break] 'Ben O'Steen - @benosteen'."

Understand "Ben" as Ben O'Steen.

Section 8 - Room 3E

The description of 3E is "3E DESCRIPTION."

Chapter 7 - Basecamp

Section 1 - Basecamp description

Basecamp is north of the Corridor - Westmost. "[if not unvisited]Normal BASECAMP DESC[otherwise]You enter the door and come face-to-face (well, face-to-back) with a [crowd of people], all of whom are looking intently towards the other side of the room[end if]."

The crowd of people is scenery. It is in the Basecamp. The description of the crowd of people is "You can see people all around you, standing shoulder to shoulder."

There is a Basecamp schedule board in the Basecamp. It is fixed in place.

The description of the Basecamp schedule board is "BASECAMP SCHEDULE DESC."

There is a refreshments table in the Basecamp. There is tea and coffee on the refreshments table.

Section 2 - Muffins, food and drink

The snack buffet is a fixed in place thing on the refreshments table. Understand "muffin/snack" as the snack buffet. The description is "A selection of different types of snacks piled high - mainly muffins. It looks like a muffin re-enactment of the Ambassador's Ferraro Rocher pyramid[if the strange code fragment is on the table]. There is a strange code fragment on the table[end if]."

Instead of pushing the snack buffet:
	say "[one of]You place your hand on the pile of muffins to push it over. 'Hey!' says a voice from across the table 'You'll knock them all down! Stop that!'. The people around you turn and begin to stare at you. You realise just how ridiculous you look at this moment, and make a tactical retreat from the table.[or]And get rollocked again? No way.[stopping]"
	
Instead of eating the snack buffet:
	say "[one of]You pull a chair up to the table and tuck a napkin into your shirt. You may be here some time.[paragraph break]Or so you thought. Everyone is looking puzzled at you. Perhaps you should just eat the muffins one at a time, like everyone else.[or]No, just one at a time. You were thinking about going on a diet soon anyhow.[stopping]";
	try taking a snack.

The smell of the snack buffet is "You begin to drool as the sugar-laden aroma hits you."

Rule for writing a paragraph about the snack buffet:
	say "On [the refreshments table] is tea, coffee and [a snack buffet]. [description of the snack buffet][if the strange code fragment is on the table]. There is a strange code fragment here also[end if].[line break]".
		
A blueberry muffin, A chocolate muffin, a plain muffin, and a lemon muffin are in Muffin Limbo.

Instead of taking the snack buffet:
	let chosen number be a random number between 1 and 4;
	if the number of things in the Muffin Limbo is 0:
		say "[manager refusal]";
	otherwise:
		if the chosen number is 1:
			if player carries the blueberry muffin:
				say "You open your hand to reveal yet-another-blueberry muffin. One is enough.";
				now the chosen number is 0;
			otherwise:
				say "A blueberry muffin.";
				move the blueberry muffin to the player;
		if the chosen number is 2:
			if player carries the plain muffin:
				say "You may have hands like a surgeon when it comes to getting muffins out of a stack like this, but you've just picked up another plain muffin. You put it back. Your bowels will thank you later.";
				now the chosen number is 0;
			otherwise:
				say "A plain, bran muffin. What joy.";
				move the plain muffin to the player;
		if the chosen number is 3:
			if player carries the chocolate muffin:
				say "You can never have too much chocolate. Except in this case you can. You put the choccy muffin back.";
				now the chosen number is 0;
			otherwise:
				say "A chocolate muffin.";
				move the chocolate muffin to the player;
		if the chosen number is 4:
			if player carries the blueberry muffin:
				say "Two is too much sourness for one day. You put it back until you've eaten the one you have.";
				now the chosen number is 0;
			otherwise:
				say "A delicious lemon muffin with a drizzle of icing on top.";
				move the lemon muffin to the player;
		if the chosen number is not 0:
			say "Taken (gingerly, not disturbing the pyramid)."

To say manager refusal:
	say "[one of]'Hey!' barks a hitherto-unseen person from behind you. 'The muffins may be 'all you can eat', but save some for the others!'[or]You are conscious of a disapproving stare coming from across the table, so you refrain from taking another.[stopping]"

Rule for implicitly taking the snack buffet:
	let chosen number be a random number between 1 and 4;
	if the number of things in the Muffin Limbo is 0:
		say "[manager refusal]";
	otherwise:
		if the chosen number is 1:
			move the blueberry muffin to the player;
			now the noun is the blueberry muffin;
		if the chosen number is 2:
			move the plain muffin to the player;
			now the noun is the plain muffin;
		if the chosen number is 3:
			move the chocolate muffin to the player;
			now the noun is the chocolate muffin;
		if the chosen number is 4:
			move the lemon muffin to the player;
			now the noun is the lemon muffin;
		say "Taken (gingerly, not disturbing the pyramid)."


Before eating the snack buffet:
	say "[one of]You pull a chair up to the table and tuck a napkin into your shirt. You may be here some time.[paragraph break]Or so you thought. Everyone is looking puzzled at you. Perhaps you should just eat the muffins one at a time, like everyone else.[or]No, just one at a time. You were thinking about going on a diet soon anyhow.[stopping]" instead.

[And finally, a bit of touch-up:]

Rule for clarifying the parser's choice of the snack buffet while taking:
	say "(from the magnificent selection before you)[line break]"

After eating a muffin:
	move the noun to muffin Limbo;
	continue the action.
	
A strange code fragment is on the refreshments table.  The description of the strange code fragment is "[first time]A piece of paper, torn off from a larger piece. It is covered in lots of lower-case letters, arranged mostly as a block of characters with a fixed spacing between characters reminiscent of a computer terminal. It reminds you of the sort of paper receipts are printed on. There is an odd mark on the back of the paper which looks a little like a snake.[line break][only]----------------------------[paragraph break][fixed letter spacing]zqkszwtt[paragraph break]vmdmzowvvioqdmgwccxv[line break]mdmzowvvitmbgwclwevv[line break]mdmzowvvizcvizwcvliv[line break]llmamzbgwcvmdmzowvvi[line break]uismgwckzgvmdmzowvvi[line break]aigowwljgmvmdmzowvvi[line break]bmttitqmivlpczbgwc[variable letter spacing][paragraph break]----------------------------[first time][paragraph break]Odd.[only]"

The strange code fragment is unused.

After taking the strange code fragment:
	say "You take the paper, but at a glance you can tell that it is encrypted - you can't tell if it will contain important information or a recipe for good Caesar salad. Well...  it's probably worth decoding then. Good recipes are hard to come by.[make Codebreaking known]".

Part 3 - People and conversations

Chapter 1 - Graham Klyne

The ask-suggestions of Graham Klyne are { 3D_printing }.

Response of Graham Klyne when asked about 3D_printing:
	say "Placeholder."

Chapter 2 - Dave Tarrant

Every turn when the player is in the Venue:
	say "The ARDrone swoops past your head."

The ask-suggestions of Dave Tarrant are { ARDrone, WiFi }.

Response of Dave Tarrant when asked about ARDrone:
	say "Placeholder."
	
Response of Dave Tarrant when asked about WiFi:
	say "Placeholder."
	

Chapter 4 - Ben O'Steen

Instead of giving a food (called thisfood) to Ben O'Steen:
	if thisfood is the plain muffin:
		say "Urgh, a plain bran muffin? I really appreciate that you got me this, but ... bran?";
	otherwise:
		say "His eyes widen. He grabs the muffin and immediately starts to eat it. You can barely make out 'Wonderful!' and 'Thank you!' being said through the crumbs.";
		move thisfood to Muffin Limbo;
		now Ben O'Steen is sated.

The ask-suggestions of Ben O'Steen are { programming languages, python, Codebreaking, ROT code, Javascript }.
The unsuggested-topics of Ben O'Steen are {rickroll}.

Response of Ben O'Steen when shown the strange code fragment or asked about the strange code fragment:
	say "You show the code fragment to him. [paragraph break]He looks at it and his eyes widen a little. 'Ah, yeah, that. It's a bit of a joke really! Have you solved it? Do you get it?' he asks[make rickroll known][make Codebreaking known]."

Response of Ben O'Steen when told about rickroll or asked about rickroll:
	if the player is carrying the strange code fragment and the fragment is unused:
		say "He smiles, looking at the code fragment you are carrying. 'Nice little cipher to start the day with, eh?'";
		award 5 points;
		now the strange code fragment is used;
	otherwise if the fragment is used:
		say "He looks quizzically at you. 'Yes, you've worked it out. Well done, but I heard you the first time.";
	otherwise:
		say "He looks a little confused. 'I'm not sure I know what you are talking about... What made you ask me about that?'" 

Understand "Attack [Ben O'Steen]" or "Hit [Ben O'Steen]" or "Strike [Ben O'Steen]" as a mistake ("[one of]You lash out at him, but he sees it coming, leaning back out of your way. 'Hey! Stop that!' he shouts 'No need for that'[or]You try to hit him again, but he's faster than he looks[or]'No'[stopping].")

Response of Ben O'Steen when asked about programming languages:
	say "[one of][make python known][make javascript known]You remember back to the orientation talk. 'I'm not sure what language I should go for at lunch. What do you think?' you ask.[paragraph break]He shrugs his shoulders a little. 'To be honest, they are all pretty much the same. Pick one, learn it by writing actual code and most importantly, find out about the libraries you should use and more importantly, the libraries you [italic type]shouldn't[roman type]. The best way you can do that is by chatting with your peers - you know, the people like you, doing similar things to you. You can learn the most from them.'[paragraph break]He turns back to his laptop and opens yet another terminal on the screen - you could've sworn you heard the laptop's fans sigh audibly. He brings up a python prompt and turns back to you. [paragraph break]'I have to say though, I have a real soft spot for python. Does the job, clear, easy, nice. Well worth putting time in learning. There's also javascript, which is a crucial language to know if you are building a web service.'[or]You ask him again about programming languages. [paragraph break]'Well, I'm not sure what else you want - I've already told you that python and javascript are worth learning. You don't have to choose one at lunch. If the conversation isn't helping you then get up and try a different table.' [stopping]";
	show topic suggestions implicitly;
	
Response of Ben O'Steen when asked about javascript:
	say "[one of][or][stopping]"

Response of Ben O'Steen when asked about python:
	say "[one of]You ask 'So... if I wanted to learn about python and its libraries and stuff...?'[paragraph break]'Google it' he replies with a smile. He continues to type into one of the many terminal windows on his screen.[paragraph break]'Er... okay.' You had thought he would help a little more than that. You turn to leave.[paragraph break]'Wait! I'm kidding!' he says. 'Ordinarily I'd tell you to search for that online, as you'll find some of the best material there, like 'Dive into Python', but look around you. There's a ton of collective python experience here, the kind of experience that make the difference between searching for hours or having an issue sorted out with a quick chat.' He 'alt-tab's back to a browser window. 'In fact, I think there is a python workshop due to start soon if you are keen. It's taking place next door in room 3B. Just remember, it's the community of people that makes a language great, not the other way around. Ask questions, get involved. As with anything, you get out from it more than what you put it, but you have to put something in first!'[or]You ask about python again. He raises an eyebrow 'Have you checked next door yet?'[stopping]";
	now python is used.

Response of Ben O'Steen when asked about Codebreaking:
	say "He looks up at the mention of codebreaking. 'It would be cool if someone did a lightning talk or session on that! What do you want to know about it? Do you know about the simple stuff like caesar ciphers or more advanced crypto?'[remove Codebreaking ask suggestion][add advanced crypto ask suggestion][add caesar cipher ask suggestion]";
	show topic suggestions implicitly;

Response of Ben O'Steen when asked about advanced crypto:
	say "[one of]'Advanced cryptography sounds fun. How about that?' you ask.[paragraph break]'[if python is used]You remember when I told you to google python? Yeah, well, there is a huge amount to modern cryptography and it's hard to explain without some preparation. [end if]I could ask around for you to see if there is someone willing to do a [lightning talk on cryptography], I'm sure there'd be interest in something like that. You could ask around too, you know. There's plenty of flexibility in the schedule later on as we purposefully left space for this sort of thing.[make lightning talk on cryptography known][or]'[first time]Would you run a session on advanced cryptography or ciph...'[paragraph break]He cuts in before you can finish. 'Sorry, not today, I've already got most of the day booked up. Besides, I'm sure there are a lot of other people who are far more qualified. [only]I hope you can find someone to talk to about it.'[stopping]"

Response of Ben O'Steen when asked about caesar cipher:
	say "[one of]'What about the Caesar cipher? How does that work?' you ask. [paragraph break]'It's a very simple code. Here, let me show you.' he says, turning the laptop towards you. 'Imagine the alphabet you want to use written out twice, one row above another. For example:' [paragraph break](on screen)[line break][fixed letter spacing]A B C D E F G H I...[line break]A B C D E F G H I...[variable letter spacing][paragraph break]By shifting the second row to the right or left by some number of letters, say, 3 letters to the right, you can create a caesar cipher encoder:[paragraph break][fixed letter spacing]A B C D E F G H I...[line break]X Y Z A B C D E F...[variable letter spacing][paragraph break]He points to the screen 'Note how the letters wrap around here. To encode a letter, you find it on the top row and use the letter under it. In this way, BED becomes YBA, HAG becomes EXD and so on. ROT 13  or 'rotate by 13' is a well known variation on the caesar cipher. Pretty easy to code this in python too.[make ROT code known]'[or]You ask again about the Caesar cipher. [paragraph break]'Turn your letters into numbers, add or subtract to them and then turn them back to text. Nothing more to it than that really.' he says with a shrug.[stopping]";
	show topic suggestions implicitly;

Response of Ben O'Steen when asked about ROT code:
	if Ben O'Steen is hungry:
		say "Ben's stomach rumbles loudly. He says 'Sorry, I'm starving. Let me finished this code so I can get some food from the Basecamp.";
	otherwise:
		say "[one of]'So, this code to do the caesar cipher thing, have you got any tips?' you ask. [make python known][paragraph break]He looks puzzled. 'You really need me to help you out? Well, you did feed me, so let's see, you just need to find the place in the alphabet for each letter ('ord(letter)' - ord('a') in python), add or subtract the shift amount to it, wrap that answer around if necessary. You might find mod ('%') handy for that. Then, just turn it back to text using something like 'chr' ('chr(...)').[or]'What do you mean?' you ask.[paragraph break]'Use ord, mod and chr... or if you really get stuck, just use google. I guarantee someone has done it before.'[stopping]'"

test ben_chat with "talk to Ben/a languages/a python".

Chapter 5 - Registration Desk Woman

There is a helpful woman in the Corridor - Middle. The helpful woman is a woman. The helpful woman carries a thing called the Dev8D lanyard. The Dev8D lanyard is a wearable, portable thing. The description of the helpful woman is "Standing behind a desk covered with conference lanyards and badges is a smiling woman. You are deeply impressed that she is able to be so chipper this early in the morning. She is pouring over various lists and logistical diagrams in front of her. It's complex enough to be either a foolproof and detailed plan for world domination, or just the food preferences of the delegates."

The Lanyard is an unfamiliar thing.

Understand "Lanyard/Dev8D Lanyard/badge" as Lanyard.

The ask-suggestions of the helpful woman are { Lanyard }.

Greeting response for the helpful woman:
	say "You say 'Hi'. [paragraph break] Hello! [if the player does not carry the Dev8D Lanyard] What is it you need? [otherwise] How are you enjoying the event so far?"

Default response for the helpful woman during Event Starts:
	say "'Erm, I'm not sure I follow you?";
	show topic suggestions implicitly;

Default response for the helpful woman during Getting Ready:
	say "She looks up briefly from her lists and says 'They are about to start in the basecamp, you'd better get there soon! Don't worry, they'll be plenty of time to register afterwards.'".
	
Response of the helpful woman when asked about Lanyard during Event Starts:
	if the player does not carry the Dev8D lanyard:
		say "She runs her finger along the badges, looking for yours. 'Ah, here we go! Now, the doors to all the main rooms are south along this corridor. If you have any other questions, just ask!'";
		now the player carries the Dev8D lanyard;
	otherwise:
		say "I've already registered you and given your lanyard to you... you haven't lost it already, have you?"
						
Instead of pushing or pulling a drink (called thisdrink):
	say "[one of]All that will create is a puddle[if thisdrink is supported by something] on the table[end if]. And do you know what a room full of developers who have sensitive, expensive electronics don't want?[paragraph break]That's right. That[or]No[stopping]."

Understand "throw [tea]" or "throw [coffee]" or "throw [tea] at [someone]" or "throw [coffee] at [something]" as a mistake ("NO FOOD FIGHTS! Seriously now. Imagine if your laptop got hit by [the noun] and ruined?")