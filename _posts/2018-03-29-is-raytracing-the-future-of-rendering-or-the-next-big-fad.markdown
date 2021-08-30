---
author: tonym128
comments: false
date: 2018-03-29 22:11:21+00:00
layout: post
link: https://ttech.mamacos.media/2018/03/30/is-raytracing-the-future-of-rendering-or-the-next-big-fad/
slug: is-raytracing-the-future-of-rendering-or-the-next-big-fad
title: Is Raytracing the future of rendering or the next big fad ?
wordpress_id: 119
tags:
- 3d
- gpu
- graphics
- programming
---
{% include open-embed.html %}
{% include gtag.html %}

I was surprised that [Ray tracing](https://en.wikipedia.org/wiki/Ray_tracing_(graphics)) made a massive resurgence at [GDC 2018](http://www.gdconf.com/aboutgdc/).

Ray tracing has always been the alternative to Polygonal Rasterization (Standard 3d Rendering) and Voxels (similar to Polygons but using many many many dots in 3d space).

Take a look at these phenomenal videos which were released at the Conference. Pay particular attention to shadows, lights and reflections as well as things like the 'feel' of the material and the way it interacts with the light.

<iframe width="560" height="315" src="https://www.youtube.com/embed/AV279wThmVU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


Proving it was real using a phone as a camera in 3d space. You can see how the camera moves in the 3d space with the phone movements, showing that this is being generated in real time.

<iframe width="560" height="315" src="https://www.youtube.com/embed/YWcawaa_9HA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



## What I want to accomplish


I'm quite fascinated by the technology and wanted to dig into the history and the alternatives, some of the theory behind it, and my reasoning it's seeing a resurgence.

## History... Haven't we heard about it before


A very long time ago before we had 3d accelerators there was a world of choice for game developers wanting to do something approximating our reality on the PC. It was with the surge of the FPS and Quake that saw the dawn of 3DFx and eventually OpenGL. Microsoft made a push into the same space with the initial versions of DirectX and Direct3d.

Quake was one of the first mainstream game I remember to do 'real 3d' using Polygon rasterizers, but there were other technologies which we lost along the way.

There were [Voxels](https://en.wikipedia.org/wiki/Voxel), using elementary 3d particles to build environments (kinda like Minecraft with smaller building blocks)

Outcast with it's Voxel terrain rendering and it's recent 3d rasterizer remake, 18 years later!

<iframe width="560" height="315" src="https://www.youtube.com/embed/HsZGeNoPJPQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


For Raytracing it's been something more of an offline affair for getting a amazing lighting for 3d models which you can see from [Autodesk.](https://knowledge.autodesk.com/support/autocad/learn-explore/caas/CloudHelp/cloudhelp/2015/ENU/AutoCAD-Core/files/GUID-498BD4DA-2C96-421E-9C6E-75CFF38FF5ED-htm.html)

![Motorcycle, Engine, Raytracing, Render, Raytrace](/images/2019/08/motorcycle-1581945_960_720.jpg)

But for real time ray tracing it's been in the domain of Coding Demo competitions for a long time, showcasing the skills of up and coming programmers and being done on even the early Amiga's like Jeff Atwood spoke about [here](https://blog.codinghorror.com/real-time-raytracing/).

And here is an amazing 64kb demo release in 2011 [Exceed - Heaven Seven (Heaven 7)](<iframe width="560" height="315" src="https://www.youtube.com/embed/rNqpD3Mg9hY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
).

<iframe width="560" height="315" src="https://www.youtube.com/embed/rNqpD3Mg9hY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



## The technology


Ray tracing uses the idea of ray casting, which involves shooting rays from a camera into a scene and evaluating what it hits in the scene, to determine what it looks like, these rays are affected by the lights casting into the scene as well.

![](/images/2019/08/300px-Ray_trace_diagram.svg.png)

The idea is that the more rays you shoot into a scene the higher a level of fidelity you achieve.

The increasing detail Illustrated by additional rays being cast at a 2d kettle from a [tutorial ](https://www.scratchapixel.com/lessons/3d-basic-rendering/introduction-to-ray-tracing)on programming Ray tracing engines.
![](/images/2019/08/teapotracing.gif)

Since the rays rely on additional recursive rays being cast, you can also speed up the process by limiting the amount of rays you will additionally cast into scene from the object such as the depth, but doing this too heavily will result in losing a lot of the amazing lighting you get from ray tracing.

[Here](https://jsfiddle.net/L1c9n67w/2/) is a simple Javascript Raytracer illustrating the rays for scene depth.

Depth of 1
You can distinctly see the lack of detail with regards to the floor on the balls and the lack of any detail on the reflection of the ball on the plane below it

![](/images/2018/03/Depth-1.png)

Depth of 2
With 2 levels of rays you can see the distinct checker board pattern more realistically displayed on the balls, as well as the detail on the floor._

![](/images/2018/03/Depth-2.png)

Depth 0f 5
There is a lot more detail on the floor reflections as well as muted colours in the later reflections on the ball._

![](/images/2018/03/Depth-5.png)

Depth of 50
Very minimal change in detail the only bif I can see is on the underside of the big ball on the floor plane has become a lot darker due to more dark shadow rays being cast into the scene from the big ball obscuring the light sources in later depth

![](/images/2018/03/Depth-50-1.png)


## The resurgence and the future ?


Accurate light and shadow representation in a scene has long been one of the tenants of graphic fidelity.

I can remember seeing the real time lighting in [Doom 3](https://en.wikipedia.org/wiki/Doom_3) and barely being able to believe it was all running in real time on my own PC.

[![](/images/2019/08/Doom3shadows2.jpg)](https://en.wikipedia.org/wiki/Doom_3)

The comparisons made were always to animated movies by Pixar and when could we have that level of detail in our games. When movies like Toy Story were made they were taking hours rather than milliseconds to calculate frames.

I believe, if our computers have the power, it could be the next step for our graphics. It's a much simpler way of representing the world and more closely mimics our reality and vision than rasterizers do.

There is a concern about building renderers which support current gen consoles and our current PC graphics cards, but then also supporting the new technology.

Thankfully, in a lot of instances, the final renderer has seemed to be hot swappable for Raytracing and Rasterization. Unity and Unreal engines are also great at supporting up and coming rendering technologies as they emerge.

Futuremark is on the action with their next version of 3dMark having a [Raytracing benchmark](https://www.pcgamesn.com/futuremark-3dmark-raytracing-demo) built in.

![DXR Raytracing on and off](/images/2019/08/directx-raytracing-demo-2.gif)

Though the Siren demo didn't specifically mention DXR, it's also showing how the state of the art is moving forwards in so many other areas right now.

We are going to be spoilt for ways to be amazed in the near future.

<iframe width="560" height="315" src="https://www.youtube.com/embed/9owTAISsvwk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

I personally think there's a bright future for the technology and it will get more main stream acceptance, as we ever push towards digitally representing our reality.



