---
author: tonym128
comments: false
date: 2018-09-10 21:42:22+00:00
layout: post
link: https://ttech.mamacos.media/2018/09/10/the-art-of-the-illusion-with-photogrammetry/
slug: the-art-of-the-illusion-with-photogrammetry
title: The art of the illusion with photogrammetry
wordpress_id: 180
tags:
- 3d
- blender
- github
- gpu
- graphics
- meshroom
- photogrammetry
- programming
---
{% include open-embed.html %}
{% include gtag.html %}

##  The Problem 

This was one of the most amazing finds of the last year for me. As someone with no real classical artistic talent, I find the idea of taking real world assets and getting them into computers fascinating.

There are many different ways of doing this and processes for it. There is a way of animating called [Rotoscoping](https://en.wikipedia.org/wiki/Rotoscoping) in which you take a stream of pictures and trace movement to get a life like feel for animation.

![horse](/images/2018/09/horse.gif) Rotoscoping 

There is [cel shading](https://en.wikipedia.org/wiki/Cel_shading) which is the idea of taking an image and transforming it into something that looks more two dimensional and flat.

![Toon-shader](/images/2018/09/Toon-shader.jpg)

Of all of them, the most magical to me has always been [photogrammetry](https://en.wikipedia.org/wiki/Photogrammetry).

<blockquote>The science of making measurements from photographs, especially for recovering the exact positions of surface points. Photogrammetry is as old as modern photography, dating to the mid-19th century and in the simplest example, the distance between two points that lie on a plane parallel to the photographic image plane, can be determined by measuring their distance on the image, if the scale of the image is known. 
</blockquote>








In 2008 Microsoft released a service in beta called [PhotoSynth](https://en.wikipedia.org/wiki/Photosynth). I recall the service being deemed as the next big thing in Photography and it was truly magical, given enough two dimensional normal camera photographs it would calculate a 3d point cloud which could be used to model the images in 3d space, much like 100's of Minecraft blocks. There was an idea, that one day, you would be able to take you one photo and with the massive resources of PhotoSynth behind you, you could augment your photo's and have them turn into 3d models.










I took my ~200 photo's of a statue in Cannizaro Park of [Dianna and the Fawn](https://historicengland.org.uk/listing/the-list/list-entry/1286374) and I turned these photo's into the most amazing 3d model, which I could spin around and view from absolutely any angle, it was like magic.









![Photosynth2011Synth](/images/2018/09/Photosynth2011Synth.jpg) PhotoSynth 







Unfortunately this was not to last and the service got degraded in time, to be a (very good) photo stitching service.







The problem was with this service gone, there was no easy way for me to take my beautiful flat 2d images and turn them into a fantastical amazing model and they sat, dormant, sad and unanimated since 2010.







![Cannizaro Park 023](/images/2018/09/Cannizaro-Park-023.jpg) Diana and the Fawn 







## The Solution








Fast forward to a week ago and I found a wonderful program called [Meshroom](https://alicevision.github.io/) by Alice Vision.









![anim-meshroom-once.gif](/images/2018/09/anim-meshroom-once.gif)Meshroom







This program promised the same goodness as Microsofts PhotoSynth, but all run locally using the power of your single local computer.







I was able to bring my images back to life using Meshroom and Blender.







![Logo_Blender.svg](/images/2018/09/Logo_Blender.svg_.png)Blender








And following an amazing video by [CG Geek](https://www.youtube.com/channel/UCG8AxMVa6eutIGxrdnDxWpQ).








<iframe width="560" height="315" src="https://www.youtube.com/embed/k4NTf0hMjtY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
&feature=youtu.be&t=1180






Loading my ~200  images into Meshroom with default setting and hitting go resulted in a lot of waiting, but a pretty spectacular result.   








![photos.jpg](/images/2018/09/photos.jpg) A small sub section of the images







![Meshroom](/images/2018/09/Meshroom.jpg) Loaded into Meshroom







And two hours later I had a 3d model with texture mapped onto all created from my 2d images.







There's a couple things that are important using this technology :







  * Good high quality images, without blur
  * A camera which is known by Meshroom or willing to add it.
  * About 60% overlap between photos to allow the algorithm to work
  * Willingness to learn a bit of Blender (which was pretty complicated for me)
  * Patience






The most rewarding part of this project for me was the ability to bring back to life my photo's from a previous project of mine, they were uploaded to Google Photo's at some point and there they have sat for 8 years. They are stored using the free version which does introduce some additional compression, but they seem to have weathered time well enough.







Once I imported the Obj Model from Meshroom into Blender I was greeted with a lot of complicated screens and information.







![Blender2.JPG](/images/2018/09/Blender2.jpg)







There a 3D Model which included some of the surroundings and 4 texture atlasses for the scene which is essentially a flat texture with information for how to project it onto your model, kind of like throwing a carpet over a manequin but doing it in a specific way everytime to end up with the same result.







I was very pleased with the model.







![WireFrame.JPG](/images/2018/09/WireFrame.jpg) 3D Wireframe Model







And the texture look wasn't looking too bad either







![Textured.JPG](/images/2018/09/Textured.jpg) Textured in Blender







Unfortunately my final rendered output was looking like it was in need of a bit of attention.







![Dianna 1.JPG](/images/2018/09/Dianna-1.jpg) A very cement look and a lot of additional scenery







I was able to animate this and get a result out into video, which I was very pleased with





<iframe width="560" height="315" src="https://www.youtube.com/embed/gf-GX59bd3c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

But there was more work to be done, the grounds around the statue didn't look very good, but it was a quick step to remove all that additional scenery and put some lights into the scene to polish it up.







Since I had taken these photos in normal daylight without a flash, the idea was to light the model up as evenly as possible, but not introduce any new shadows, which was just a check box inside Blender for the lights.







And this took me to my final output






<iframe width="560" height="315" src="https://www.youtube.com/embed/fnIPAXWv5Pw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
&feature=youtu.be






This video is a more dynamic pan around to show that I can now view any angle  I want, and while it is a little too shiny still, it does represent the statue much better now.







## Where to from here







The next steps for me are to see if Meshroom can map an indoor area properly with better photo's. Indoors pose a unique problem that a lot of these algorithms work on the texture or object to work out how they are moving in a scene and single colour painted walls do not represent well, so you need to have interesting rooms if you hope for this to succeed.







I think it is amazing how far this technology has come, and what you can now do with Open Source projects which are out in the wild for anyone to try. I'm quite keen to see about how much of my world I can map.







With mapping technology like Google Maps and Bing Maps, how long is it until they can apply this to our StreetView photos and give us a literal like for like 3D View of what we would see and could walk around.







How much more immersive would Google Earth be with technology like this behind it ?







They are using similar technology already, but if you could source ground level data, this could essentially turn our whole world Virtual.







Imagine deciding to play Grand Theft Auto or Just Cause and choosing your last holiday as the location or your local neighbourhood, because no longer are the artists going to be constrained by the environment, they're going to focus on making dynamic stories which adapt to the environment you choose to play in.







We're not quite there yet, but how about [Tower Defence on Google Maps](https://www.mapstd.com/)



