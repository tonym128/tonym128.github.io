---
author: tonym128
comments: false
date: 2019-02-17 20:00:40+00:00
layout: post
link: https://ttech.mamacos.media/2019/02/17/defcon-26-there-and-back-again/
slug: defcon-26-there-and-back-again
title: DefCon 26 There and back again
wordpress_id: 256
---
{% include open-embed.html %}
{% include gtag.html %}

![](/images/2019/02/DefCon26.jpg)DefCon 26





I was very fortunate to get an opportunity to go to DefCon 26 with a friend of mine for a project he was doing. He needed some extra hands on deck and being in the right place at the right time was fortuitous.







## What's a DefCon ?







It’s an Annual Security Conference in Las Vegas and the biggest global gathering of Security Experts, Black Hats, White Hats, Hackers and anyone at all interested in computer and network related security







30,000 people make it through the doors every year and there are 6 tracks going on all day every day over a period of 4 days, there are also a ton of conference areas for specialist interests and knowledge sharing, as well as hacking contests.  








[https://www.defcon.org/](https://www.defcon.org/)







There are two other events which take place at the same time. [BSides Vegas](https://www.bsideslv.org/) and [Black Hat](https://www.blackhat.com/)







## Why was I there ?







[ElasticNinja ](https://twitter.com/elasticninja)had designed, made and manufactured about 150 badges for Monero to give away at DefCon, it was the uber LCD badge.







![](/images/2019/08/img_5d5ffbd5491b0.png)#BadgeLife







![](/images/2019/08/img_5d5ffbd656569.png)Monero







And on the side I was keen to get a bit of the  experience of Las Vegas, being in the US, and being at such an awesome conference.







## Badges! You want badges?





![](/images/2019/02/badges.jpg)Badges always makes me think of the scene from [Bad Boys]()
<iframe width="560" height="315" src="https://www.youtube.com/embed/qcfnfKTP4Nk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>




[Badge Video](https://twitter.com/fluffypony/status/1027607278633926656) , [Badge Code](https://github.com/dodgymike/monero-badge-f405) ,  [Badge PCB](https://github.com/dodgymike/dc26-monero-badge-pcb)







The badge was priority number one first and foremost, get that out the door and into peoples hands, then think about the other stuff. There were a couple steps to doing that.







#### Proir to DefCon







  * Get solution to coin challenge ready






#### Before DEFCON







  * Get to Las Vegas via 3 countries
  * Get Batteries for Badges
  * Charge all batteries
  * Fix everything that unexpectedly went wrong






#### At DefCon







  * Run a coin challenge competition
  * Monitor solutions
  * Hand out badges
  * Fix broken badges






#### AFTER DEFCON







Party!







## PRIOR TO DEFCON







Getting the coin challenge solution ready prior to DefCon was great fun. My first step was to actually solve ElasticNinja's challenge, since he didn't pass out the solution...







You can see the Challenge up at [https://monerobadge.org/](https://monerobadge.org/)







At the conference you had a chance to get hold of a Coin from the Monero desk. There were ~1000 of these for the ~150 badges going.





![](/images/2019/02/image.png)The 4 coins representing the challenge to win a badge  






You had to decipher the coin using the information encode on the front and back to get a encryption key, you would then use this encryption key to send us an encrypted tweet, that no one else had sent, saying something funny. 







Once we had recieved and confirmed the tweet you would win a badge which you could collect from us.







I put up a 'cheat sheet' for my solution at [https://github.com/tonym128/monero-badge ](https://github.com/tonym128/monero-badge)as well as a running version of the encoder / decoder at [https://tonym128.github.io/monero-badge/](https://tonym128.github.io/monero-badge/)







The basics of the solution were to work out that the encrypted data was the longer of the two (on the back of the coin) and the encryption key was on the front.







Once you get that, you hopefully get that you're working with HEX and convert it to ASCII, then you have to start cycling through the different mechanisms for encrypting data using a key.







It's a bit of a leap to get to the XOR operation, but once you do, you're laughing. Unfortunately the key doesn't work 100% and it's been corrupted as an extra detterent. Once you're got that, tweeting to [myself](https://twitter.com/tonym128), [@fluffypony ](https://twitter.com/fluffypony)and [@elasticninja ](https://twitter.com/elasticninja)got you a badge!







## BEFORE DEFCON







Getting to DefCon was quite the trip, it was 3 flights, with the longest being a 16 hour long haul, which is close to the longest commercial flight on earth ( I checked, Auckland to Doha seems like the longest at 17h50m )







Once checked in at the MGM Grand, I had a few hours to kill and figured I would do something useful and grab the batteries.





![Image result for mgm grand vegas](/images/2019/08/mgm-grand-las-vegasb.jpg)Just ridiculous in size



![](/images/2019/02/image-1.png)This guy stared at me from everywhere!





I took a walk down to the peeps who offered to store the batteries for us in Vegas and while it was only 3km's away, it was my first exposure to Vegas heat, I think it was over 40 degrees





![](/images/2019/02/image-2.png)Just a nice 3km walk, if I recall correcly I asked for a glass of water when I got there, but I was a little dazed and confused. I took a Taxi back.





![Image result for don't go outside](/images/2019/08/keep-calm-and-don-t-go-outside.png)







The first lesson I learnt in Vegas, don't go outside.

Taxi's are your friends, air conditioning is your friend!  

Once we had all the batteries charging 300 batteries with 15 x 4 battery chargers was up next! We had to charge every battery from almost flat and that took 8 hours. With the amount of charging needed before the conference I had to wake up to swap the batteries out...

![](/images/2019/02/Charging.jpg)One round of charging!

After charging a couple batteries, we realized the batteries didn't have the little nubs that connect them to the terminal on the battery holder. Interesting for the most standard battery ever made, the 18650... it wasn't so standard!

Thus ensued the soldering of 2 x bigger nipples onto... every... single... badge!

![](/images/2019/02/Nipple-soldering-station.jpg)The nipple soldering station, not quite as exciting as it sounded.  

Staring at the smoke detectors for 2 minutes after soldering everytime was quite 'entertaining'.

There was some time for a break and a coffee before the next disaster struck.

![](/images/2019/02/20180806_082337.jpg)Was interesting taking part in the institution of American Coffee's

Whilst being really clever and getting all the badges ready for transport to the conference, we figured we'd load them up with batteries to just be able to hand them out, BAM done. 

So here is ElasticNinja programming at night, with the beautifull red 'I've got a battery in' light, which should have lasted for weeks on these two batteries.

![](/images/2019/02/BadgesReady.jpg)Ready to rock, batteries all plugged in, all tested with a copy of the firmware, rock on

The next morning when we woke up, we saw the badges were at 60% power, without having been turned on. The little red led was not working quite as expected, this meant taking all the batteries out, charging them again, as well as removing the led's resistor...

Skip forwards another 20 hours later and we were ready to rock... AGAIN!

ElasticNinja was working on some additional code quite a lot of time and bug fixing a bunch of things (including writing Blockchain the game). 

I had to fill my time up with something and came up with the emoji badge! Since it was pretty easy to get some graphics for it and the code was relatively simple (show a picture), I made the graphics for it and ElasticNinja implemented it, since I wasn't so good with getting a development environment up.

<video muted controls>
    <source src="/images/2019/02/VID-20180806-WA0025.mp4" type="video/mp4">
</video>

The Emoji Badge!

And just to push the old school graphics effects on the awesome pixel array, I found a plasma effect in C, it wasn't totally optimal, but after a bit of hacking it made it's way into the badge as well!

<video muted controls>
    <source src="/images/2019/02/VID-20180809-WA0012-2.mp4" type="video/mp4">
</video>

Eye searing plasma!

After getting all the badges flashed and getting a late lanyard delivery, it was time to setup them up, first off...

![](/images/2019/02/Lanyard.jpg)

Remove all the metal pins we cannot use and replace them with orange zip ties, that we chose because we're so colour awesome!

![](/images/2019/02/Late-Lanyard-Delivery.jpg)Check out the epic orange zip ties!

## AT DEFCON

DefCon was pretty amazing when it started, we missed a substantial part of the first day as we were gunning away on most of the above still, but we did make our way there and see the sights later.  

![](/images/2019/02/Breaking-Firewalls.jpg)Cool graphics definitely make talks even more interesting, but this was pretty good even without the graphics

I don't have a lot of pictures at the conference as it's a kinda a 'no no', to randomly go around taking pictures of people, but it was super busy and there were more people than I'd like to have counted everywhere you looked.

It was pretty phenomenal to see the amount of rooms and talks going on in addition to the 6 main tracks. There are rooms for body hacks, hard disk duplication, social engineering, pretty much anything do with security or hacking and it was there.

We were VERY succesful in handing out the coin challenge tokens and all 1000 tokens were gone as fast as we handed them out. On day 2 we had to put images online for people to use in the challenge.

I spent a ton of time, co-ordinating with people to either help them solve the challenge or to show them how to use their prize and also fixing badges, we had a couple failures, but wasn't too bad. ElasticNinja was able to work magic with the broken badges! I was good at replacing batteries too :P

![](/images/2019/02/Can-you-see-the-fear-in-my-eye.jpg)

This was the one photo of me actually at DefCon, I was hacking away at 5 badges and an official photographer grabbed this photo of me

## After DefCon

It was finally time to party, but I was pretty tired after all this and came down with a cold, so I was sick the last night of DefCon and missed out on a massive party.

![](/images/2019/02/Party-bath.jpg) Nothing says fun like the party bath full of beer 

And the following day we were off, we were leaving Las Vegas to grab a flight out of Los Angeles and there wasn't a flight we could take, so we grabbed a rental car.

![](/images/2019/02/We-had-a-nice-car.jpg)We might have got something a tiny bit better than the stock model. The Dodge Charger 5.7L V8 HEMI.

## What did I learn ?

DefCon was pretty amazing, a lot of firsts for me, but more than anything it was pretty cool to get exposed to the massive world of hacking and security. 

As well as seeing how much people care about and have fun with an area of technology that I'm less exposed to. Also, now when I see security articles, I sometimes have a reference  point to expand my knowledge base off rather than just skip to the next  news item. 

## Where to from here ?

I've actually started hacking with hardware a bit more and the interest there has grown quite a lot for me, I'm hoping to have a project to show off soon, but it is a "When it's done" type affair.

Everyone always says your first DefCon is a whirlwind of experiences that you just get swept up in, and this was certainly true for me, I'd like to go again sometime, and knowing what I now know, prepare a bit better, see a bit more, learn a bit more, hopefully maybe  even teach some people some stuff.

![](/images/2019/02/DefConLogo.png)

Till the next time!



