//talk to salmon on the open sea
 * Salmon 1
 ->salmon1dialogue
=salmon1dialogue
- I don't want to be a downer, but not everyone will make the journey.I wonder what's up there, that everyone wants so bad?

I heard you can see the stars up there. They say they glisten brighter than any scale

I heard the water is crisp and pure the ocean has given me the creeps, ever since that one incident...do you think it'll be high enough there to see the sea in the sky? do you think they can see us? haha sorry, that was random. I've just been thinking too much, I guess.

* Salmon 2
->salmon2dialogue
* Salmon 3
->salmon3dialogue
* Salmon 4
->salmon4dialogue

=salmon2dialogue
- this is a monumental event a right of passage for our species, if you will you youngsters should take this more seriously. It's not a game.
* Salmon 3
->salmon3dialogue
* Salmon 4
->salmon4dialogue

=salmon3dialogue
-Lets go!
* Salmon 2
->salmon2dialogue
* Salmon 4
->salmon4dialogue

=salmon4dialogue
-i'm coming along to support my friends. I don't really care about the treasure or wishes that are up there, but don't tell them i said that
* Salmon 2
->salmon2dialogue
* Salmon 3
->salmon3dialogue

    
    //profound inner fish turmoil?
*Inner fish monologue
    -Everyone seems so excited, but why dont I feel the same....or do I?
    * yeah I'm pumped!->continue
    * nah, this is lame...->END
   
    =continue
    
    *continue swiming
    //near end of game big decisions coming up
    -You start to question if you are really ready for this? You've come all this way, but is this goal you've been working towards really what you want?
*Enter the fresh water lake
->Coginthemachine
*Turn back
->Thefriendswemadealongtheway
    
=Coginthemachine
-You see salmon going through the whole process of finding a mate, but you notice another lone salmon off to the side. You swim up to them.
*The lone salmon
-do you ever wonder, why we're here in the first place?
*yes 
*no
...i see...
  - can i confess something?
  *yes
  ->hopeful
  *no
  ->cog
  
  =hopeful
  -to be honest, i'm not sure why i made it all this way. i mean, i came along because everyone else made it out to be a big deal, but it turns out i never knew what i was looking for in the first place, even now that i'm here.especially now that i'm here
      - do you have any dreams?
      *yes 
      *No
      -that's nice...
     - ...Hey um should we do that whole reproduction thing?
     *Sure
     ->happycog
     *No
     Oh okay...hey Wait UP!
     ->Thefriendswemadealongtheway2
      

=cog
- oh ok....well lets just do that whole reproduction thing
Afterwards you both are too tired to make the trip back. You both drift off into the abyss, feeling alone and helpless->END
    

=Thefriendswemadealongtheway
 You go back and pass by the friends you made on your trip, maybe you guys hang out or something. You wonder what was waiting for you at the Lake, but does it really matter? You're happy now and thats all that matters.
    -> END
    
=Thefriendswemadealongtheway2
You start swimming back downstream as the other salmon follows close behind, passing some of the friends you made along the way. You and the seahorse couple plan a double date....or whatever fish do for couples fun
->END

=happycog
Aftewards you both are too tired to make the trip back. You both begin to drift off into peaceful nothingness together....
 - they were right, the stars are beautiful here... ->END

