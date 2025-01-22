/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/
-> ocean

== ocean ==
Just a small fish in the big ocean with a few notable areas around you.

 + [Go and explore north of the vast ocean.] -> North
 
 + [Go and explore south of the vast ocean.] -> South
 
 * [Go to the myersterious treasure chest, who knows what surpises await you.] -> Treasure
 + {Treasure} [Go to the empty treasure chest] -> empty
 
 == North ==
 You see a shipwreck in the distantce
 + {not Treasure}There is a shark in the way do you keep going anyways? -> Eaten
 
 + {(Treasure && not shark_free)} [Use the bait to get rid of the shark] -> shark_free
 + {shark_free} [Go to shipwreck] -> shark_free
 
 + [Go Back] -> ocean
 
 == South ==
 There is a school of other fishes.
 + [Join them] -> school
 + [Go Back] -> ocean
 
 == Treasure ==
Upon apporaching the chest you noticed that all it had was just bait, but you take it just in case it is useful.
+ [Go Back] -> ocean

== empty ==
You already took everything the chest had.
+ [Go Back] -> ocean

== shark_free ==
You can access the abandoned shipwreck now
+ Explore the wreck. -> wreck
+ [Go Back] -> ocean

== wreck ==
As you explore the ship you noticed a big red button with faded text that you can't make out.
+ [Push the button] -> boom
+ [Go back] -> shark_free

== boom ==
The button activated a loud blaring alarm, that is saying something, but you can barely hear it. Although it never mattered since the ship released a nuke destorying everything around you which also includes you.
-> END

== school ==
Class is offically in session for you, so get ready for this for next upcoming years of your life :)
-> END

== Eaten ==
The shark eats you whole :(
-> END
