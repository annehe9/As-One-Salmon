VAR took_plastic = false
VAR took_shrimp = false
VAR ate_shrimp = false
VAR talked_to = 0

//this is where the game begins if you don't end your last game at the top of the stream
== begin_narration ===
- every year, thousands of salmon swim upstream in what is known as a salmon run.
- this time, you heed the call of the waters.
->END


=== what_will_you_find ===
- you wonder what you will find.
* [love?]
    -> what_will_you_find
* [fame?]
    -> what_will_you_find
* [riches?]
    -> what_will_you_find
+ -> continue_narration
    
=== continue_narration ===
- you don't know, because you are a fish.
->END

=== more_narration ===
- Most salmon return to the river in which they spawned.
+ Try to remember
- you remember...
* [that it was a lively place] You remember that it was a lively place. 
                                The area was full of life. You played in the stream, and there was so much to explore.
                                You enjoyed being with everyone. But since then, you have all been separated.
* [that it was a peaceful place] You remember it being a peaceful place. 
                                You lived without fear of predators. You lived blissfully with the other fish, and every day was full of happiness.
                                But you haven't experienced that since then.
* [that is was a terrible place] You don't like to think about it.
-
* Think about the future
* Think about the past
- it's awfully quiet on the open ocean. you are too tired to think about such serious things.
* Okay, what now?
- you'd better get going if you want to make it.
->END

=== seagull===
{Squawk! The world is a dangerous place, boy. That's a fact of life. | Scram, kid.} 
->END

=== out_of_bounds ===
- You feel like you should not be going this way.
- You think you should be going north.
* How do you know this
- Fish instinct.
->END

=== out_of_bounds2 ===
- You ought to turn back now. There is nothing out here.
->END

=== out_of_bounds3 ===
- Are you sure you want to leave? You cannot undo this decision.
->END

=== north ===
* Talk to fish.
    Hello there! Are you headed to the estuary?
    + + Yes
        Me too! Before we go, do you want to see something cool?
        + + + Yes
            Okay, come with me! 
            ->END //TRIGGER EVENT HERE WHERE YOU FOLLOW THE FISH
        + + + No
            Suit yourself. 
            ->END
    + +(notcoming) No
        Okay...but just so you know, all of the other salmon are going there right now.
        ->END
* {notcoming} Talk to fish.
    Are you ready to go now? You're going to be late.
    + + Yes
        Let's go!
        ->END //CUTSCENE EVENT HERE ALSO
    + + (refused_to_follow) No
        The fish looks upset at you, as much as a fish can emote. 
        Okay. I'm leaving.
        ->END
+ {refused_to_follow} No one is here.
    ->END

=== where_is_stuff ===
+ I'm new here, how do I get to the river? 
    Swim north! If you follow the shoreline you'll find your way to the estuary, which leads to the river.
    + + What else is around here?
        Hmm, there is some coral to the east, and a kelp forest to the west.
        ->END
    + + Goodbye
        See you at the estuary!
        ->END
+ What else is around here?
    Hmm, there is some coral to th east, and a kelp forest to the west.
    ->END
+ Goodbye
    See you at the river!
    ->END
    
=== startingfish1 ===
- This is my first time returning here. A lot has changed!
->END

=== startingfish2 ===
There's so much to see out here!
->END

=== startingfish3 ===
Hurry up! We have to go!
->END

=== startingfish4 ===
The ocean is so big! I just try to keep swimming forward.
->END

=== startingfish5 ===
Hello there! Are you headed to the estuary?
+ Yes
    Me too! :)
    ->END
+ No
    Okay...but just so you know, all of the other salmon are going there right now.
    ->END
    
=== startingfish6 ===
The landscapes are so cool! They're like, above the water!
+ damn that's crazy
    I know, right??
    ->END

=== startingfish7 ===
It's great to be a salmon!
->END

=== startingfish8 ===
Did you know that salmon undergo a transformation when they enter freshwater?
->END

=== startingfish9 ===
{The waves crashing on the shore are mesmerizing...|They are too engrossed in watching the waves to talk.}
->END

=== startingfish10 ===
I don't know why I came here but I just woke up today and found myself here...
->END

=== startingfish11 ===
Look at this beautiful view!
->END

=== startingfish12 ===
Sometimes I like to stop and look at the flowers.
->END

=== startingfish13 ===
I saw some cool coral just up ahead.
->END

=== startingfish14 ===
Did you know that the coral is thousands of years old? I wonder what they have to say...
->END

=== startingfish15 ===
Swimming backwards feels weird. It feels disorienting.
->END

=== startingfish16 ===
I am going to visit the kelp forest!
->END

=== startingfish17 ===
There are so many interesting creatures in this world.
->END

=== startingfish18 ===
Does the existence of seahorses imply that there are...
land horses??
->END

=== startingfish19 ===
I think I've seen enough. I'm going to the estuary now.
+ Where is it?
    Keep going north. You can't miss it.
    ->END
    
=== startingfish20 ===
this is some blue ass water
->END

=== startingfish21 ===
The ocean is so vast...
->END

=== startingfish22 ===
It's so easy to get lost here.
All I know is that the river flows in the north.
->END

=== startingfish23 ===
I see you've found this tiny island too.
I like to hang out here and get away from the hustle and bustle of the estuary.
Sometimes it's nice to just swim around and take it all in.
->END

=== startingfish24 ===
Sometimes it feels like I'm the only one out here...
->END

=== startingfish25 ===
this is some green ass grass
->END

=== startingfish26 ===
We are close to the river, I can feel it.
->END

=== startingfish27 ===
swim swim swim swim
->END

=== startingfish28 ===
I swam down this little path but it turned out to be a dead end...
Maybe I should just follow the other fish next time.
->END

=== startingfish29 ===
Oh, which way to go?
->END

=== startingfish30 ===
I love finding new islands!
->END

=== startingfish31 ===
I am studying the biology of the land!
->END

=== startingfish32 ===
The estuary is just up ahead!
->END

=== startingfish33 ===
We're on our way!
->END

=== startingfish34 ===
I'm so excited and \#blessed for this opportunity. I'd like to thank my mentors, my supervisor,  my bus driver, my...
+ You leave them be.
    They continue rambling.
    ->END
    
=== startingfish35 ===
When I don't know what to do, I just keep moving forward.
->END

=== startingfish36 ===
Wow, I'm going to learn so much from this experience!
->END

=== startingfish37 ===
It's been a while since I've seen so many salmon in one place!
->END

=== startingfish38 ===
It's nice to be a part of something.
->END

=== startingfish39 ===
There are so many salmon to meet. I wonder if any of them are my soulmate.
->END

=== startingfish40 ===
Yeah, we're taking the path less traveled!
->END

=== startingfish41 ===
Yeah, yeah!
->END

=== startingfish42 ===
There are so many different paths, but we all end up going to the same place.
->END

=== startingfish43 ===
Swimming is the best!!
->END

=== startingfish44 ===
We may all look the same, but we all have something different to say.
->END

=== startingfish45 ===
You ever think about things?
+ Yes
    Well, I don't think EVER
    ->END
+ My head is empty
    That's the way to live. No thoughts, just carefree.
    ->END
    
=== startingfish46 ===
It's cool to work towards a goal, you know?
->END

=== startingfish47 ===
How many different kinds of trees do you think exist?
->END

=== startingfish48 ===
I'm glad to have a purpose.
+ What do you mean?
    Being part of this whole ecosystem, I mean, it's amazing!
    ->END


=== east ===
~ talked_to += 1
You see a coral reef, waving at you with their long round body. 
- Hey hey hey, you are new here. 
+   Yes 
Great! I love new friends! 
+ + Nice to meet you too.
    You know, it gets lonely down here. Every year, I meet so many of you...
    + + + So many of me? What do yo mean? 
        Oh, I meant, so many of whom who looks exactly like you, and swim towards the exact destination.
         Well... It was great meeting you.
         ->END
+ + You want to ask them another question. 
    Have you ever been there? You know, the estuary? 
    Oh boy, I have not. I cannot move from my home here, you see.
    Though, I find it interesting that I have been here forever, but I have never met any salmon heading back from the estuary...
    + + + [I wonder why that's the case...]
        I wonder why that's the case. Did they decide to stay there forever because of how beautiful it is? 
        I do not know my friend, but I hope that is true. I hope the best for you. 
        ->END 
+   No 
    Well, welcome back. Isn't this place mesmerizing? 
    + + Yes, and I want to know more about the estuary.
        I would love to tell you more about it, but I just have never heard anything from any salmon who actually went there and came back. I'm so sorry. 
        ->END
    + + Yes, and I am just here to listen to you ramble on life. 
        Somedays I doubt if I will be happier if I can swim. 
        You know, us coral reefs live long long lives, between 5,000 and 10,000 years old. We see the same views everyday. But I know for a fact that just by being here, I'm helping the lives of other sea plants, and that makes my life meaningful. I don't have to have a impressive destination to get to. I am comfortable being where I am because that is what I want. 
        + + + That's wonderful to hear. But you know, some of us just gotta go to places...
            But is that what you actually want? For yourself?
            + + + + I don't know... That was a lovely talk... But I have to head back now.
                    ->END
            + + + + Yes, I'm sure. 
                    ->END
         + + +  That's intersting to hear. Sometimes I think about if I actually want to go to the estuary...
            ->END

=== west === 
~ talked_to += 1
You come across a pair of sea horses.
+ Ask for their names
    I'm Brad!
    I'm Bethany!
    ++ Hello to both of you. I'm new here.
       Cheers to new friends! We love meeting new friends. Actually, we enjoy doing everything together, old or new. 
       Oh wow, that is impressive. How long have you two been together? You look lovely!
       We've been together for ten days, but I know we are soulmates already.
       I wish I had a relationship like that... I've always had commitment issues.
       Oh no, that's terrible. As seahorses, once we find the one, we mate for life.
       We wish you that someday you will find your one and only love too. 
       Thank you. I think that will happen once I get there, you know, the upstream place. It was so nice to meet you both. Bye!
        ->END
           
           
    ++ Right... Sorry it's been a while, my memory is a little foggy. 
       No worries. It's nice seeing you again. Are you still on that journey to the upstream? 
       +++ Yes, I am determined to overcome all challenges and swim upstream. 
           Well, good luck to you! We will miss you. 
           Thank you. 
           ->END
       +++ Yes... but no. I'm having some doubts...
           Oh, how's so? Do you want to talk about it? 
           ++++ Yes. I'm doubting about the purpose of swimming upstream. 
                I'm not sure why I am doing that, or who will I be with when I'm there. They say that it is the place to go, it is the place where I will find my love, but will I? Or is that "love" worth it? 
                That is totally understandable. To be very honest, we are not sure what to tell you. We've never heard from anyone who actually went upstream...but we do see the kids come back.
                +++++ That is so strange. I'm feeling a bit pessimistic... 
                      I am worried now. Is swimming upstream actually going to make me happy? Is the magical place up there my ultimate goal in life? 
                      ->END
                +++++ Maybe they are so happy with their life so that they decided to stay there. Right? 
                    I do hope so.
                    ++++++ I agree. It was so nice catching up with you, but I have to go now. Take care!
                         ->END
           ++++ No, actually, I think I am fine. 
                ->END 
           
+ Ask how they are doing today
    Brad is feeling a bit under the weather as bearing the young is not an easy task. 
    ++ Oh congratulations! I didn't know that. Wait... Brad is bearing the baby? 
       Yes! Guess you didn't study the top ten unique animal facts.. ha ha. The male seahorses are the ones that carries and give birth to baby seahorses. It gives the female seahorses more time to prepare more eggs so the seahorse specie can thrive!
       +++ That is impressive! For salmon, it's the ordinary way. But, one thing I've always wondered about is what are the responsibilities for a male salmon when their partner is bearing the baby salmon. It is so strange that I've never heard about the story from anyone...
       Same for us. We've never heard from anyone, or seen anyone who came back. 
           ++++ Interesting... I will ask around more. 
               ->END 
       


=== south ===
You swim to the south but something feels wrong. The water is dark and rapid. You feel that you are going the wrong way. In the depths, you catch glimpses of shifting shadows and unblinking eyes.
+ Keep going
 {~ ->struggle | ->death | ->earlyend}
+ Turn back
->END

=== struggle ===
You struggle in the water but make little progress.
+ Try again
 {~ ->struggle | ->death | ->earlyend}
+ Go Back
->END

=== death ===
The journey was just too much for you. You died, never knowing what the future could hold.
->END //TRIGGER DEATH EVENT

=== earlyend ===
- You swim out over the horizon, leaving your past life behind.
- Many days pass. There seems to be no end in sight.
- In the distance, you see some shimmering on the surface of the water.
- Could it be... other fish?
- You swim toward them.
->END //TRIGGER ENDING EVENT

=== search1 ===//idk this is more of a tech test
{not took_plastic: \*Triumphant music\* You find a piece of plastic. Disgusting. But its shiny white surface...it beckons. | There's nothing here.}
* {not took_plastic} Take
    ~ took_plastic = true
    You have no self control and took the plastic. You are now literally carrying trash around. You feel kind of silly.
* {not took_plastic} EAT IT
    You eat the forbidden fruit, in a humorous mood. 
    What's the worst that could happen?
    You died. What did you expect? ->END
+ {not took_plastic} Do not
    It's gross so you left it alone.
+ {took_plastic} Return ->END
-
->END

=== search2 ===//also add more here
{not took_shrimp and not ate_shrimp: \*Triumphant music\* You find some shrimp. Tasty. | There's nothing here.} 
    * {not took_shrimp and not ate_shrimp} Take
    ~ took_shrimp = true
    You take the shrimp. You save it as a snack for later.
    * {not took_shrimp and not ate_shrimp} Eat
    ~ ate_shrimp = true
    You eat the shrimp. You feel invigorated.
    * {not took_shrimp and not ate_shrimp} Do not
    * {took_shrimp or ate_shrimp} Return ->END
-
->END

=== vegan_seagull ===
~ talked_to += 1
{I'm vegan. It's better for the environment. | It reduces CO2 emissions and saves water. | Do you want to know more? Cryptocurrency and NFTs are also terrible. | I don't know what else to say. Go look it up.} //this is just comedic relief and injecting some real facts into the game
->END

=== estuary ===
You reach the estuary.
* (what) {not what} what the fuck is an estuary
    It's where the river meets the sea.
    * * Okay.
+ [Continue]
-There are lots of fish here, mulling around the waters. You can feel the energy in the air. The waves pulse with bodies flowing and shifting, the unmistakable glint of fish scales.
-There is much to do here.
->END
 
=== salmon1dialogue ===
~ talked_to += 1
- I don't want to be a downer, but not everyone will make the journey.
- I wonder what's up there, that everyone wants so bad? 
->END

=== salmon2dialogue ===
~ talked_to += 1
- I heard you can see the stars up there.
- They say they glisten brighter than any scale.
->END

=== salmon3dialogue === 
~ talked_to += 1
- I heard the water is crisp and pure...
- The ocean has given me the creeps, ever since that one incident...
- do you think it'll be high enough there to see the sea in the sky? 
do you think they can see us? haha sorry, that was random. I've just been thinking too much, I guess.
->END

=== salmon4dialogue === 
~ talked_to += 1
- I heard they can grant any one wish for the salmon who get to the top...what should I wish for, I wonder?
->END

=== salmon5dialogue === 
~ talked_to += 1
- This is a monumental event.
- A right of passage for our species, if you will.
- You youngsters should take this more seriously. It's not a game.
->END

=== salmon6dialogue === 
~ talked_to += 1
-Lets go! I'm so pumped for this!!
->END

=== salmon7dialogue === 
~ talked_to += 1
- i'm coming along to support my friends. 
- I don't really care about the treasure or wishes that are up there
- but don't tell them i said that
->END

=== salmon8dialogue === 
~ talked_to += 1
- It's like we're setting out on an adventure!
->END

=== salmon9dialogue === 
~ talked_to += 1
- Swimming in a school is awesome!!
- We're like one big fish!!
->END

=== salmon10dialogue === 
~ talked_to += 1
- I'm going to make it first. I've trained my whole life for this.
->END

=== salmon11dialogue === 
~ talked_to += 1
- if i received the wish i would become a baker
- i'd open a small neighborhood bakery with little flower planters on the windowsill
- the smell of fresh baked bread every morning
- it's been my life's dream
* what's a baker
    They don't seem to hear you. You are left to imagine what this mystical bakery is.
    -It sounds nice, though. You hope you get to experience it one day.
->END
    
=== salmon12dialogue === 
~ talked_to += 1
- pssssssssst.
- hey. hey you.
- i heard theres a BIG treasure buried upstream.
- you didn't hear it from me...
->END

=== salmon13dialogue === 
~ talked_to += 1
- when salmon run, it's like we're swimming as one!
->END

=== salmon14dialogue === 
~ talked_to += 1
- actually
- i've got this all figured out.
- what they DONT WANT YOU TO KNOW
- there's a big new-age fish society in the mountains
- ...
- and they are DEFINITELY aliens.
->END

=== salmon15dialogue === 
~ talked_to += 1
- I want to be the first in fishkind to make a map of this river!
->END

=== salmon16dialogue === 
~ talked_to += 1
- If I can get to the top, maybe I can be someone, you know?
->END

=== ceo ===
~ talked_to += 1
I want to become the CEO!
* CEO? ->ceocont
* The CEO of what? ->ceocont

=ceocont
The Chief Executive ofthe OCEAN!
->END

=== rock ===
~ talked_to += 1
If you could be any object, what would you be?
* A fish
    Lucky you! It's nice to meet someone who's happy with who they are. ->i_would_be
* A bird
    Yeah, being able to fly would be neat. ->i_would_be
* A rock
    I was going to say that! ->i_would_be
    
=i_would_be    
For me, I would be a rock.
* That's lame.
    * * because you're all alone.
        Are we any less alone out here? Tell me, did you ever have any meanintful interactions with any of the fish in this river?
        * * * Yes //if you talked to enough fish
            Well...maybe times have changed. There is hope for us after all.
            ->END
        + + + No
            See, I'm right. There is no meaning. All we can do is swim.
            ->END
    * * because you have no freedom.
        As fish, we have too many responsibilities, too many choices. I just want to be able to sit in this river and do nothing. I want to take a break and take in the beautiful scenery. Doesn't that sound like freedom to you?
        ->END
    * * because everyone swims all over you.
        I would get to see all the beautiful scenery and watch the fish and the days go by, sitting peacefully in the river. That doesn't sound so bad, doesn't it.
        ->END
* That's cool.
    Yeah...I want to sit and watch the days go by, in the midst of nature. Not a thought in this head.
    ->END
    
=== forgotten ===
~ talked_to += 1
Hey, it's you again!
* I remember you!
    Yeah, it's been quite some time since we last met.
    What happened to your dream of
    * *Opening a bakery 
        ->continued
    * *Becoming a CEO 
        ->continued
    * *Seeing the stars 
        ->continued
* Who are you?
    Ah, nevermind. I must have confused you with another fish. ->END
    
=continued
    Ah, I'm not sure what it was... those days seem so far away. 
    I was so naive at the time. They were just faraway dreams. I didn't know how to be serious. You and I, we need to focus on what's realistic.
        * * Right.
            See? You understand. There's no time for trivial matters. We must fulfill our duties first. ->END
        * * I don't understand.
            You'll learn to understand to survive. ->END

    
=== bear ===
A bear stands in the middle of the river, swiping its paw in the current, catching poor unsuspecting fish. You have to be careful.
+ Ah! You're caught!
    The bear's fat paw catches you right in the gills, knocking the air out of you. It's all over.
    + + {took_plastic} Wait a minute
        The bear chokes and retches. 
        Why are you carrying literal garbage? You're disgusting!! Are you trying to kill me?
        Get out of my sight.
        You escape with your life. ->END
    + + {not took_plastic}
            ->death
+ You swim past safely. ->END

=== overlook ===
You get to swim into a small area along the edge of the cliff and look at the scenery and how far you've come. //maybe put a lot of fog here because we don't want to have to model everything for one scene
->END

//=== keepswimming ===
//You keep swimming upstream.
//* [Talk] ->salmon17dialogue
//* [Talk] ->salmon20dialogue
//* [Talk] ->salmon21dialogue
//* [Talk] ->salmon21dialogue
//* [Talk] ->salmon19dialogue
//* [Talk] ->salmon22dialogue
//* [Talk] ->salmon21dialogue
//* [Talk] ->salmon20dialogue
//* [Talk] ->salmon18dialogue
//* [Talk] -> salmon21dialogue
//* [Talk] -> salmon20dialogue
//* [Talk] -> salmon21dialogue
//* [Talk] -> specialdialogue //only if you talked to everyone else
//+ [Done talking] ->keepswimming2

//=== keepswimming2 ===
//~ currentscene = -> keepswimming2
//* [Talk] ->salmon17again
//* [Talk] ->salmon21dialogue
//* [Talk] ->salmon20dialogue
//* [Talk] ->salmon21dialogue
//* [Talk] -> salmon22dialogue
//* [Talk] -> salmon21dialogue
//* [Talk] -> salmon20dialogue
//* [Talk] -> salmon21dialogue
//* [Talk] ->specialdialogue2 //only if you talked to everyone else
//+ [Done talking] ->keepswimming3

//=== keepswimming3 ===
//~ currentscene = -> keepswimming3
//You start swimming up the rapids.
//* [Talk] ->salmon17again2
//* [Talk] ->salmon22dialogue
//* [Talk] ->salmon21dialogue
//* [Talk] ->salmon23dialogue
//* [Talk] ->salmon21dialogue
//* [Talk] ->salmon20dialogue
//* [Talk] ->specialdialogue3
//+ [Done talking] ->keepswimming4

//=== keepswimming4 ===
//~ currentscene = -> keepswimming4
//You continue climbing the falls.
//* [Talk] ->salmon17again3
//* [Talk] ->salmon21dialogue
//* [Talk] ->salmon24dialogue
//* [Talk] ->specialdialogue4
//+ [Done talking] ->upstreamarea

=== salmon17dialogue ===
~ talked_to += 1
- I will show the world!!
->END

=== salmon17again ===
~ talked_to += 1
- that I!!!
->END

=== salmon17again2 ===
~ talked_to += 1
- wILL MAKE IT!!!!
->END

=== salmon17again3 ===
~ talked_to += 1
- They are too busy swimming to talk.
->END

=== salmon17again4 ===
~ talked_to += 1
- I'm tired now. That took a lot out of me.
->END

=== salmon18dialogue ===
~ talked_to += 1
- the current is so strong...
- I don't know if I'm cut out for this...
->END

=== salmon19dialogue ===
~ talked_to += 1
- Don't you think it's cool that we're one of the few species of animals that can do this? It's our destiny!
->END

=== salmon20dialogue ===
~ talked_to += 1
- No time for chit chat.
->END

=== salmon21dialogue ===
~ talked_to += 1
- We must swim.
->END

=== salmon22dialogue ===
~ talked_to += 1
- We must keep moving forward.
->END

=== salmon23dialogue ===
~ talked_to += 1
- So tired...can't rest
->END

=== salmon24dialogue ===
~ talked_to += 1
- I want to go home...
->END

=== specialdialogue ===
~ talked_to += 1
- Wow, you talked to so many fish here! Aren't you worried you won't make it upstream in time? You'll be left behind!
->END

=== specialdialogue2 ===
~ talked_to += 1
- Still talking to everyone, huh?
- Well, I can respect that.
- The name's Salmone, by the way. ///asdfjd idk
- You can call me Sam for short.
->END

=== specialdialogue3 ===
~ talked_to += 1
- Do you ever procrastinate on making a big decision by doing anything and everything else?
- Yeah, I feel that.
- Do you think there's another way?
- You know, besides going upstream?
- Just a thought.
->END

=== specialdialogue4 ===
~ talked_to += 1
- What I'm swimming upstream for?
- To figure things out, I guess.
- I want to see it for myself.
- Is that shellfish?
* Shellfish. Really.
* Punny.
- Oh, shellfish, selfish, whatever. I don't know...I think I ought to do it. It's a once in a lifetime opportunity after all. And it's nice to know I'll have a friend when I get there.
* Oh, who?
    * * Wait
        * * * It's me?
                - You're glad too. Maybe you did find something on this journey after all.
->END

//=== upstreamarea ===
//* [Talk] -> salmon17again4
//* {specialdialogue2} {specialdialogue3} {specialdialogue4} [Look for Sam]
//    You swim around but do not see them. 
//    You ask some of the fish but they haven't seen them either. ->upstreamarea
//* [Swim to overlook] ->overlook
//* [Bear] ->bear
//* [Talk] ->forgotten
//* [Talk] ->rock
//+ Take side path -> branching
//+ [Continue] -> journeyupstream
    
=== branching ===
- You notice a fork in the river. Your instincts scream that this is the wrong way. Do you take it?
+ Take it
    You take it anyway.
    You wonder if you've made the right choice.
    * *Yes, I made this decision for myself. ->cont
    * *No, I made this decision impulsively. ->cont
+ Do not
    You do not take the path, feeling a bit relieved.
    ->END

=cont
 - Either way, you are not turning back.
 - You swim down the winding path, observing nature all around you.
 - It's quiet out here, without the rest of the salmon.
 - The tree leaves fall and create ripples. Bugs skitter across the surface of the water. You've never seen something like this before.
 - At night, you lie in the river, staring up at the sky.
 - You feel the strength draining from your bones. You know that you don't have much time left.
 - You reflect on your journey. Flashbacks to the scenes of your journey.
 - What a great adventure.
 * ...
    You drift in the current as the camera zooms out.
    * * ...
        You can't help but wonder what was at the top of the stream. ->END
    
=== weak ===
The longer we stay in freshwater, the weaker we get.
->END

=== journeyupstream ===
* [Talk] -> weak
*continue swiming
    //near end of game big decisions coming up
    -You start to question if you are really ready for this? You've come all this way, but is this goal you've been working towards really what you want?
*Enter the fresh water lake
    ->lake
*{talked_to >= 30} Turn back
    ->Thefriendswemadealongtheway
* {talked_to < 30} Turn back
    ->regrets

    
=== lake ===
You did it! You reached the top of the stream, in the mountains. What will you do now?
+ Talk to non-salmon fish
    ->otherfish
+ Talk to salmon
    ->Coginthemachine
* {talked_to >= 30} Turn back
    You don't feel like you belong here. You turn back. ->Thefriendswemadealongtheway
* {talked_to < 30} Turn back
    You don't feel like you belong here. You turn back. ->regrets
    
=otherfish
Hello!
+ Hello.
-It's great to see you guys back.
* It's actually my first time here...
    Oh yeah. You guys leave and then come back at the same time every year. It's hard for a simple fish to keep track.
    Well, I hope you enjoy the lake!
    ->END
* Where is the treasure?
    Treasure?
    * * You know, I get to make a wish or something?
        ???
        The real treasure is the nature surrounding us! The magical phenomenon of life and rebirth!
        * * * Umm that's cool and all but everyone told me they were looking for something here...
            That's for you to discover for yourself. I can't help you there. 
            ->END
+ Goodbye. 
    Bye!
    ->END


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
  ~ talked_to += 1
  -to be honest, i'm not sure why i made it all this way.
  - i mean, i came along because everyone else made it out to be a big deal, but it turns out i never knew what i was looking for in the first place, even now that i'm here.
  - ...
  - especially now that i'm here
    - do you have any dreams?
      *yes 
      *No
      -oh, that's nice...
     - ...Hey um now that we made it should we do that whole reproduction thing?
     *Sure
     ->reproduced
     *No
        - You sit in silence together.
        ->ending
     //Oh okay...hey Wait UP!
     //->Thefriendswemadealongtheway2
      

=== cog ===
- oh ok....well lets just do that whole reproduction thing
* Continue
->reproduced
    

==== Thefriendswemadealongtheway ===
 You go back and pass by the friends you made on your trip. You reminisce of the conversations you had along the way. You wonder what was waiting for you at the Lake, but does it really matter? You're happy now and thats all that matters.
    -> END
    
=== regrets ===
    You turn back, hesitant. As you swim downstream, the scene flashes by you. What was it all for? You wonder if you could have done more. ->END

=== ending ===
 - They were right.
 - The stars are beautiful here... ->END
 
=== reproduced ===
You did it, you fulfilled your wordly obligation. But you don't feel satisfied. Is this it? Is this all there is to the world? You think back on your journey.
- flashbacks to scenes.
* {talked_to >= 30} No, it's not. 
    You think about all the hopes and dreams of the salmon. They are worthwhile. They do mean something, and they mean something to you. You are too tired to swim any longer, and stare up at the twinkling stars.
    ->ending
* {talked_to < 30} ...
    You think about the masses of fish swimming through the river as you float listlessly in the water, surrounded by darkness. The roaring sound of waves, the sound of nothingness...
    ->ending
 

