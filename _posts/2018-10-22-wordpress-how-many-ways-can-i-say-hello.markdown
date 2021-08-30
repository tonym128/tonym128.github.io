---
author: tonym128
comments: false
date: 2018-10-22 21:15:15+00:00
layout: post
link: https://ttech.mamacos.media/2018/10/22/wordpress-how-many-ways-can-i-say-hello/
slug: wordpress-how-many-ways-can-i-say-hello
title: Wordpress, how many ways can I say hello ?
wordpress_id: 232
tags:
- aws
- blog
- cloud
- wordpress
---
{% include open-embed.html %}
{% include gtag.html %}

I find it funny that I can write programs that can calculate risk on a share portfolio, do heavy math calculations on tiny hardware devices, help write programs that massive enterprise businesses use to stock take , but putting up my first WordPress blog, was just as massive en devour to get something I was happy with.







It didn't involve writing a line of code, but there were a lot of lessons!







## What did I want to accomplish ?







Mostly was super keen to get a nice website up, quickly and easily to share information with people. I have always heard ... things... about WordPress, so I thought it a good opportunity to give it a go.







I had a few things I really wanted to get into the project







  * Self hosted  

  * SSL  

  * Easy to update
  * Some sort of database for the articles
  * Potentially multi user for one day
  * Follow web best practices
  * Small and fast
  * Themed as a bonus for a ever changing look  







## What did I learn early on ?







I started by testing on **Wordpress.com** just to see if I could be happy enough, and I was, but onto the first point, self hosted. So I decided to move over to old faithful **Amazon Web Services** and to use a really cheap **Lightsail** instance.







**BitNami** provide a nicely packaged **Wordpress** image you can spin up at the touch of a button in **Lightsail**.







![](/images/2018/10/bitnamilogo.png)







![](/images/2018/10/lightsail.png)













**WordPress.com** and **WordPress.org** are slightly different beasts, I had a few assumptions about being able to easily transfer between the two, but if you could it was more complicated than I could figure out in the time I was willing to invest. I think if you upgrade you account you can.







![](/images/2018/10/check.png)







Self Hosted, Easy to Update, Follows Web Best Practices, Themed, Database driven, Multi-User  








![](/images/2018/10/Cross.png)







SSL, Small and Fast.













Not doing too bad at the moment, only two things remaining on my little check lists, or at least I thought!







The lists of things started then, getting it hosted on domain, making it load faster than it was, getting **SSL** up and running, and getting a nice book type read to it. So just a couple things :)







I got a Domain setup pretty quickly using **[AWS Route 53](https://aws.amazon.com/route53/)**, the hardest part was waiting 5 minutes, for it to come up.







![](/images/2018/10/lets.png)







**SSL** took me a while but using **[LetsEncrypt](https://letsencrypt.org/)**[ ](https://letsencrypt.org/), a very cool project to provide safe and free SSL certificates to encrypt all the things, and following a guide [here](https://medium.com/unicorn-supplies/ssl-for-aws-lightsail-wordpress-8053359a774f) got me over the line.







There were a ton of amazing plugins that I played with along the way, but I really enjoyed a few that pushed some new technologies that I was interested in into the blog.







**Yeost SEO, Glue for Yeost SEO and AMP, Amazon Polly, All-in-One WP Migration, All In One SEO Pack, WP Mail SMTP**.  








![](/images/2018/10/Analytics.png)







![](/images/2018/10/Analytics2.png)







Getting **Google Analytics** up was a good idea, mostly makes me cry, but a good idea none the less. I think this was all through **Yeost SEO**, but I used a few along the way.







![](/images/2018/10/AMP.png)







The most fascinating time sink was **[AMP](https://www.ampproject.org/)**[ ](https://www.ampproject.org/)and getting that to work. It's a special technology developed by Google to make pages load really quickly. Similar to Facebook Instant Articles. 







I used almost all the plugins I could find for Wordpress and eventually settled on a defunct AMP one, but have since converted to **Glue for Yeost SEO and AMP**.







![](/images/2018/10/Polly.png)







[Amazon Polly ](https://aws.amazon.com/polly/)transcription was pretty easy to integrate and I find it fun listening to her drone my own words back at me, so much so that I've left it enabled :) I really liked that it uploads the article **MP3**'s into a **[AWS S3 Bucket](https://aws.amazon.com/s3/)**[ ](https://aws.amazon.com/s3/)which it can then pull them from just as MP3 files!







## Where too from here ?





![](/images/2018/10/TTech.png)





I think the site looks pretty good now, has a few good features and mostly gets out the way to let me write new content quickly and get it out there.







## What's in store for the future ?







I think that cool changes are coming soon, from the new [Gutenberg editor for Wordpress ](https://wordpress.org/gutenberg/)which I'm finding really cool after a few tries using it. To the new [Headless CMS ](https://medium.com/tech-tajawal/why-headless-cms-is-becoming-so-popular-57d262b1e096)movement, which is a bit of a off shoot of the whole React Website with a API / Database sitting behind it.







I am honestly still tempted to roll my own, but that's offset to let me rather keep exploring and sharing new technologies and my first forays into them.







I hope you enjoy the articles and potentially set up you own blog or experiment with something you learnt here.







  




