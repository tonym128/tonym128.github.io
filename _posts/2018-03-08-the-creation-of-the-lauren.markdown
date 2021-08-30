---
author: tonym128
comments: false
date: 2018-03-08 20:37:21+00:00
layout: post
link: https://ttech.mamacos.media/2018/03/08/the-creation-of-the-lauren/
slug: the-creation-of-the-lauren
title: The creation of Lauren
wordpress_id: 85
tags:
- c#
- github
- programming
---
{% include open-embed.html %}
{% include gtag.html %}

![](/images/2018/03/Lauren.png)

For me, the best part of finishing a project is making people's tedious problems into non-entities.

I believe that people's jobs are generally encumbered with too much peripheral work to what they should actually be doing and focussing on.

I take great pleasure in making manual things go away, to free up a person to do the more interesting parts of their job.

So this project has a particular place in my heart... and [GitHub.](https://github.com/tonym128/lauren)


## Premise


As part of the their job a friend writes articles and publishes them on a custom [CMS](https://en.wikipedia.org/wiki/Content_management_system) and they have to put a picture in mutliple formats into the CMS to allow it to display in many different forms.

Some of the formats are on the full page article, mini-preview, linking previews and sister-site integrations, each article may need up to 10 photos and each of these has to be cropped, centred and re-sized into their respective formats, meaning up to 40 seperate images that need to be created and was taking an hour plus each time they had to do it!

I felt certain I could help them spend their time better.

![](/images/2018/03/pexels-photo-52608.jpeg)


## Research!


Whenever I want to start a project the first step is always reasearch. In this age of information when you set out to do something there is almost always someone who has done it already, so I looked to a lot of my favourite imaging tools to see how easily they could be setup to automatically create a bunch of formats each time they were needed.

![](/images/2018/03/app-xnconvert-512.png)

![](/images/2018/03/logo-download.png)

I'd used [XNConvert](https://www.xnview.com/en/xnconvert/) in the past and [IrfanView ](http://www.irfanview.com/)with great sucess, but couldn't find a way to easily automate them to this specific task that would be easy enough and portable enough to setup on any machine.

So the project was a go!

![](/images/2018/03/flight-sky-earth-space.jpg)


## What I set out to accomplish


I had a couple goals when I set out to do this.



	
  * Solve the Problem : It must resize into the custom formats very quickly.

	
  * Don't get overzealous : It mustn't take me a lot of time to complete.

	
  * Keep it simple : It should be tiny and singularly focussed.


I thought of these as mantra's during my development.

I decided to write a Windows desktop application, this was an easy choice as I wouldn't have to host anything for them and they could locally have the application on their PC and transfer it as they desired.

Using [C#](https://en.wikipedia.org/wiki/C_Sharp_(programming_language)) and [Visual Studio](https://en.wikipedia.org/wiki/Microsoft_Visual_Studio) by Microsoft.

![](/images/2018/03/c-sharp.jpg)

![](/images/2018/03/Visual-Studio.jpg)


## Solve the Problem


I wanted a very simple UI, drag and drop an image and get your copies.

There were a couple iterations of even this, but this is what I came up with in the end.

![](/images/2018/03/Lauren-Full-Image.png)

A simple header (I had to use a 80's era logo for something in my lifetime).

I also wanted to highlight the chosen name, Lauren, as per a work collegues request. While I was happy to oblige I still wanted to be somehow related to the application. The chosen concatenation was Largely AUtomated REsiziNg tool.

With the two most important questions answered (what does it do and what do we call it) it was time we move on.


## Don't get overzealous


A brief break down, the top bar is for the different sizing requirements depending on CMS and tasks, so instead of creating twenty different types, we actually only create the ones pertinent to the specific task.

![](/images/2018/03/Footer.png)

The bottom bar is for quickly setting the max size of quality of the picture.

![](/images/2018/03/Header.png)

These were the only two concessions I made to expanding requirements.

There is a choose file option, but dragging and dropping into the window is the expected usage.

There is no process button, we just process as you go.


## Keep it simple (stupid)


I do actually try to follow this [principle](https://en.wikipedia.org/wiki/KISS_principle) when I do anything.

It's tightly coupled to a favourite saying.

[![](/images/2018/03/Simplicity.png)](https://www.brainyquote.com/quotes/alan_perlis_177332?src=t_complexity)

Keeping this project small and singularly focussed managed to get me to the finish line fast with the best ROI (Return on Investment) for the work I was doing, which was in my spare time and to help a friend. The ROI was seeing a happy friend with a tedious task removed from their life.


## Fun stuff ?!?!


My original approach was to naively resize everything regardless of the aspect ratio changing.

Surprisingly to me, this resulted in a really terrible output.

I quickly changed to using a resize and crop method which didn't give the best result.

![](/images/2018/03/Centred-Focal-Point.png)

The image above illustrated the centred focal points in each photo which is how the resize and crop where happening.

I then changed this to allow the user to select a focal point if they wished and defaulted it to the centre. This avoided having to go to an external tool again.

With the focal point selected you get much higher quality output.

![](/images/2018/03/Chosen-Focal-Point.png)

With the resize and crop you see with similar aspect ratios' we get a similar photos, but with the long upright photo's we get a better result.

A couple things I learnt.



	
  * Resize it to get the one axis right.

	
  * Then crop to get the sizing.

	
  * Maintain image quality at a certain level.

	
  * Sometimes you may have to zoom in to get the first axis right.

	
  * Some CMS's have file size limits as well.


This resulted in a very good image which my friend was happy with.

To get the files into the users hand with minimal fuss, I create new files in the same directory as the created file but with the size of the file appended onto the filename.


## Finished product


I put the single exe in a folder on Google Drive and shared the link with the friend, after a couple firewall mistarts I did get it to them.

Once they had the application, we went through a couple iterations.

Initially I created a folder with the file name and stored the files in there, they found it easier to have it in the same folder.

After that it was mostly around the sizes required, so I added xml config, for them to control their own destiny.

And finally it was about the different tasks, so I added 4 xml profiles.

They have been very happy with the program and even shared it with collegues to help them do their jobs quicker and more effeciently.

![](/images/2018/03/pexels-photo-450271.jpeg)


## Where to from here


Sometimes a project should be short lived, but there are a couple things I would add if I worked on it in the future.



	
  * The resizing and crop algorithm could be improved, but it's Good Enough (tm) right now.

	
  * The UI could give more feedback and be multi-threaded.

	
  * The code should follow best practices and have tests built in.

	
  * The profiles should be configurable in App and you shouldn't be limited.

	
  * Conext Menu Integration in Windows.

	
  * It should be multi platform.


I'm not sure if I'll ever do any of the above, but I am still very happy to have invested the time I have so far into this tool.

Have a look at the source in Github, if you want and give me a shout if you'd like to talk about it :)

[https://github.com/tonym128/lauren](https://github.com/tonym128/lauren)
