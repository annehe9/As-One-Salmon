- Black screen.
* [Wake up.] You have been born into existence. 
    -> starting_scene

=== starting_scene ===
- You are in a stream in the highlands. You can swim around and explore the environment.
+ Swim in the water
    The water is clear and sparkling. The stream burbles.
    -> starting_scene
+ Look around
    The stream is lined with lush evergreen forests, their needles swaying in the spring breeze. Some flower petals float by. You see birds chirping and flitting around.
    -> starting_scene
+ Talk to the small fish around you
    You are literally baby and have no concept of communication. Instead you make some cute sounds.
    -> starting_scene
+ [Swim downstream] ->downstream

=== downstream ===
You swim downstream. You are quickly carried away by the current.
* NOOO go back
    - You are not strong enough to go back.
        * Accept your fate
            - You let the current carry you downstream.
            - Vast landscapes flash by. From the mountains, to forests, to rolling plains. You catch glimpses of society in the distance, ominous smokestacks billowing dark clouds. You pass by many different animals - bears, deer, other fish, birds, squirrels, and more.
            * [Continue]
                - Suddenly, you are flying over a waterfall. You are buffeted by the rocks at the bottom. You catch a glimpse of the vast, dark blue sea before you pass out.
                * [Black screen]
                    - Camera goes to you lying in the ocean, slowly floating around all alone. The dark waters dimly reflect the twinkling night sky. The camera slowly zooms out.
                * [Fade to black.]
-
* narrator time!! //this is where the game begins if you don't end your last game at the top of the stream
- every year, thousands of salmon swim upstream in what is known as a salmon run.
* [Continue]

- this time, you heed the call of the waters.
* [Continue]
    -> what_will_you_find


=== what_will_you_find ===
- you wonder what you will find.
* [love?]
    -> what_will_you_find
* [fame?]
    -> what_will_you_find
* [riches?]
    -> what_will_you_find
* -> continue_narration
    
=== continue_narration ===
- you don't know, because you are a fish.
* [Continue]
- Most salmon return to the river in which they spawned.
* Try to remember
- you remember...
* [that it was a lively place] You remember that it was a lively place. The area was full of life. You played in the stream, and there was so much to explore. You enjoyed being with everyone. But since then, you have all been separated.
* [that it was a peaceful place] You remember it being a peaceful place. You lived without fear of predators. You lived blissfully with the other fish, and every day was full of happiness. But you haven't experienced that since then.
* [that is was a terrible place] You don't like to think about it.
-
* Think about the future
* Think about the past
- it's awfully quiet on the open ocean. you are too tired to think about such serious things.
* Okay, what now?
- you'd better get going if you want to make it.
* [Continue] -> ocean1

=== ocean1 ===
- You are now freed from the narrative text. You swim around freely and explore.
+ Talk to Seagull 
{Squawk! The seagull swipes at you, nearly missing. Scary. | Scram, kid.} 
-> ocean1
+ [Go North] -> north
+ [Go East] -> east
+ [Go West] -> west
+ [Go South] -> south


= north
- You go north.
+ You see a fish and talk to them. 
- Hello there! Are you headed to the estuary?
+   Yes
    Me too! Before we go, do you want to see something cool?
    + + Yes
        Okay, come with me!
        You follow the fish and swim to a new area. 
        + + + You wait. -> sunrise
    + + No
        Suit yourself.
        -> estuary
+   No
    Okay...but just so you know, all of the other salmon are going there right now.
    + + Return -> ocean1
    
= east
- You go east.
+ You see a coral reef, waving at you with their elongated round body. 
- Hey hey hey, you are new here. 
+   Yes 
    Great! I love new friends! 
    Nice to meet you too.
    You know, it gets lonely down here. Every year, I meet so many of you...
    So many of me? What do yo mean? 
    Oh, I meant, so many of whom who looks exactly like you, and swim towards the exact destination.
    Well... It was great meeting you. 
    + + You swim back. -> ocean1
    + + You want to ask them another question. 
        Have you ever been there? You know, the estuary? 
        Oh boy, I have not, and I find it interesting that I have been here forever, but I have never met any salmon heading back from the estuary...
        I wonder why that's the case.. Did they decide to stay there forever because of how beautiful it is? 
        I do not know my friend, but I hope that is the case. I hope the best for you. 
            + + + Return -> ocean1 
+   No 
    Well, welcome back. Isn't this place mesmerizing? 
    + + Yes, and I want to know more about the estuary.
        I would love to tell you more about it, but I just have never heard anything from any salmon who actually went there and came back. I'm so sorry. 
        + + + Return -> ocean1
    + + Yes, and I am just here to listen to you rambling on life. 
        Somedays I doubt if I will be happier if I can swim. You know, us coral reefs live long long lives, between 5,000 and 10,000 years old. We see the same views everyday. But I know for a fact that just by being here, I'm helping the lives of other sea plants, and that makes my life meaningful. I don't have to have a impressive destination to get to. I am comfortable being where I am because that is what I want. 
        + + + That's wonderful to hear. But you know, some of us just gotta go to places...
            But is that what you actually want? For yourself?
            + + + + I don't know... That was a lovely talk... But I have to head back now.
                    + + + + + Return -> ocean1
            + + + + Yes, I'm sure. 
                    + + + + + Return -> ocean1
         + + +  That's intersting to hear. Sometimes I think about if I actually want to go to the estuary...
            + + + + Return -> ocean1

= west 
You come across a pair of sea horses
they talk to you about their relationship and life with their children
->estuary //replace with character dialogue

= south
You come across a message in a bottle or a series of these bottles drifting at sea 
Inside is message detailing the struggles a person has with the life they are living and the choices that they made. This can either be message meant to encourage the recipient to make their own decision or to talk about how great their life is now that they have decided for themselves or how shitty their life is after they decided to follow the crowd.
->estuary //replace with character dialogue


=== search1 ===//idk this is more of a tech test
{not took_plastic} \*Triumphant music\* You find a piece of plastic. Disgusting.
* (took_plastic) {not took_plastic} Take
* {not took_plastic} Do not
* {took_plastic} Return
- You return to the estuary.
->estuary

=== search2 ===//also add more here
{not took_shrimp and not ate_shrimp: \*Triumphant music\* You find some shrimp. Tasty. | There's nothing here.} 
    * (took_shrimp) {not took_shrimp and not ate_shrimp} Take
    * (ate_shrimp) {not took_shrimp and not ate_shrimp} Eat
    * {not took_shrimp and not ate_shrimp} Do not
    * {took_shrimp or ate_shrimp} Return
- You return to the north.
->estuary
>>>>>>> Stashed changes

=== sunrise ===
- You see a beautiful sunrise. A firey light spills out over the horizon and engulfs the ocean. It is breathtaking.
* A New Dawn
    * * [Continue] -> estuary

=== estuary ===
You reach the estuary.
* (what) {not what} what the fuck is an estuary
    It's where the river meets the sea.
    * * Okay.
+ [Continue]
-There are lots of fish here, mulling around the waters. You can feel the energy in the air. The waves pulse with bodies flowing and shifting, the unmistakable glint of fish scales.
-There is much to do here.
+ Talk to fish ->fish1
+ Talk to fish ->fish2
+ Talk to fish ->fish3
+ {not search1} Search around ->search1
+ {search1} Search around -> search2

=== fish1 ===
something
->estuary

=== fish2 ===
something
->estuary

=== fish3 ===
something
->estuary

    -> END
