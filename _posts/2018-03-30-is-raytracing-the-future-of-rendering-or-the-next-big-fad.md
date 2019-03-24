---
id: 119
title: Is Raytracing the future of rendering or the next big fad ?
date: 2018-03-30T00:11:21+00:00
author: tony
layout: post
guid: http://ttech.tonym128.com/?p=119
ampforwp_custom_content_editor:
  - ""
ampforwp_custom_content_editor_checkbox:
  - ""
ampforwp-amp-on-off:
  - default
ampforwp-redirection-on-off:
  - enable
amazon_polly_audio_link_location:
  - https://s3.us-east-1.amazonaws.com/audio-for-wordpress-17069432435aa889ef033eb26aa48aa297fdf8f7/2018/03/amazon_polly_119.mp3?version=1536824784
amazon_polly_audio_location:
  - s3
amazon_polly_enable:
  - "1"
amazon_polly_voice_id:
  - Amy
amazon_polly_sample_rate:
  - "22050"
amazon_polly_settings_hash:
  - 6778c89b2df9c7e35627cc39ce0e91fa
image: /wp-content/uploads/2018/03/Logo.png
categories:
  - Uncategorized
tags:
  - 3d
  - gpu
  - graphics
  - programming
---
I was surprised that [Ray tracing](https://en.wikipedia.org/wiki/Ray_tracing_(graphics)) made a massive resurgence at [GDC 2018](http://www.gdconf.com/aboutgdc/).

Ray tracing has always been the alternative to Polygonal Rasterization (Standard 3d Rendering) and Voxels (similar to Polygons but using many many many dots in 3d space).

Take a look at these phenomenal videos which were released at the Conference. Pay particular attention to shadows, lights and reflections as well as things like the &#8216;feel&#8217; of the material and the way it interacts with the light.



Proving it was real using a phone as a camera in 3d space. You can see how the camera moves in the 3d space with the phone movements, showing that this is being generated in real time.



## What I want to accomplish

I&#8217;m quite fascinated by the technology and wanted to dig into the history and the alternatives, some of the theory behind it, and my reasoning it&#8217;s seeing a resurgence.

## Mowr Video

Here is the video that showed at GDC recently demo&#8217;ing a lot of the technology and it&#8217;s use in DX12 DXR API.

https://www.youtube.com/watch?v=mgyJseJrkx8

## History&#8230; Haven&#8217;t we heard about it before

A very long time ago before we had 3d accelerators there was a world of choice for game developers wanting to do something approximating our reality on the PC. It was with the surge of the FPS and Quake that saw the dawn of 3DFx and eventually OpenGL. Microsoft made a push into the same space with the initial versions of DirectX and Direct3d.

Quake was one of the first mainstream game I remember to do &#8216;real 3d&#8217; using Polygon rasterizers, but there were other technologies which we lost along the way.

There were [Voxels](https://en.wikipedia.org/wiki/Voxel), using elementary 3d particles to build environments (kinda like Minecraft with smaller building blocks)

Outcast with it&#8217;s Voxel terrain rendering and it&#8217;s recent 3d rasterizer remake, 18 years later!



For Raytracing it&#8217;s been something more of an offline affair for getting a amazing lighting for 3d models which you can see from [Autodesk.](https://knowledge.autodesk.com/support/autocad/learn-explore/caas/CloudHelp/cloudhelp/2015/ENU/AutoCAD-Core/files/GUID-498BD4DA-2C96-421E-9C6E-75CFF38FF5ED-htm.html)

<img src="https://cdn.pixabay.com/photo/2016/08/09/22/12/motorcycle-1581945_960_720.jpg" srcset="https://cdn.pixabay.com/photo/2016/08/09/22/12/motorcycle-1581945_960_720.jpg 1x, https://cdn.pixabay.com/photo/2016/08/09/22/12/motorcycle-1581945_1280.jpg 1.333x" alt="Motorcycle, Engine, Raytracing, Render, Raytrace" /> 

But for real time ray tracing it&#8217;s been in the domain of Coding Demo competitions for a long time, showcasing the skills of up and coming programmers and being done on even the early Amiga&#8217;s like Jeff Atwood spoke about [here](https://blog.codinghorror.com/real-time-raytracing/).

And here is an amazing 64kb demo release in 2011 [Exceed &#8211; Heaven Seven (Heaven 7)](https://www.youtube.com/watch?v=rNqpD3Mg9hY).



## The technology

Ray tracing uses the idea of ray casting, which involves shooting rays from a camera into a scene and evaluating what it hits in the scene, to determine what it looks like, these rays are affected by the lights casting into the scene as well.

<img class="thumbimage" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Ray_trace_diagram.svg/300px-Ray_trace_diagram.svg.png" srcset="//upload.wikimedia.org/wikipedia/commons/thumb/8/83/Ray_trace_diagram.svg/450px-Ray_trace_diagram.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/8/83/Ray_trace_diagram.svg/600px-Ray_trace_diagram.svg.png 2x" alt="" data-file-width="875" data-file-height="582" width="300" height="200" /> 

The idea is that the more rays you shoot into a scene the higher a level of fidelity you achieve.

The increasing detail Illustrated by additional rays being cast at a 2d kettle from a [tutorial](https://www.scratchapixel.com/lessons/3d-basic-rendering/introduction-to-ray-tracing) on programming Ray tracing engines.  
<img class="right" src="https://www.scratchapixel.com/images/upload/introduction-to-ray-tracing/teapotracing.gif" /> 

Since the rays rely on additional recursive rays being cast, you can also speed up the process by limiting the amount of rays you will additionally cast into scene from the object such as the depth, but doing this too heavily will result in losing a lot of the amazing lighting you get from ray tracing.

[Here](https://jsfiddle.net/L1c9n67w/2/) is a simple Javascript Raytracer illustrating the rays for scene depth.

Depth of 1  
_You can distinctly see the lack of detail with regards to the floor on the balls and the lack of any detail on the reflection of the ball on the plane below it  
_<img class="alignnone size-full wp-image-120" src="http://localhost:8080/wp-content/uploads/2018/03/Depth-1.png" alt="" width="256" height="256" srcset="http://localhost:8080/wp-content/uploads/2018/03/Depth-1.png 256w, http://localhost:8080/wp-content/uploads/2018/03/Depth-1-150x150.png 150w" sizes="(max-width: 256px) 100vw, 256px" /> 

Depth of 2  
_With 2 levels of rays you can see the distinct checker board pattern more realistically displayed on the balls, as well as the detail on the floor._  
<img class="alignnone size-full wp-image-123" src="http://localhost:8080/wp-content/uploads/2018/03/Depth-2.png" alt="" width="256" height="256" srcset="http://localhost:8080/wp-content/uploads/2018/03/Depth-2.png 256w, http://localhost:8080/wp-content/uploads/2018/03/Depth-2-150x150.png 150w" sizes="(max-width: 256px) 100vw, 256px" /> 

Depth 0f 5  
_There is a lot more detail on the floor reflections as well as muted colours in the later reflections on the ball._  
<img class="alignnone size-full wp-image-121" src="http://localhost:8080/wp-content/uploads/2018/03/Depth-5.png" alt="" width="256" height="256" srcset="http://localhost:8080/wp-content/uploads/2018/03/Depth-5.png 256w, http://localhost:8080/wp-content/uploads/2018/03/Depth-5-150x150.png 150w" sizes="(max-width: 256px) 100vw, 256px" /> 

Depth of 50  
_Very minimal change in detail the only bif I can see is on the underside of the big ball on the floor plane has become a lot darker due to more dark shadow rays being cast into the scene from the big ball obscuring the light sources in later depth  
_<img class="alignnone size-full wp-image-124" src="http://localhost:8080/wp-content/uploads/2018/03/Depth-50-1.png" alt="" width="256" height="256" srcset="http://localhost:8080/wp-content/uploads/2018/03/Depth-50-1.png 256w, http://localhost:8080/wp-content/uploads/2018/03/Depth-50-1-150x150.png 150w" sizes="(max-width: 256px) 100vw, 256px" /> 

## The resurgence and the future ?

Accurate light and shadow representation in a scene has long been one of the tenants of graphic fidelity.

I can remember seeing the real time lighting in [Doom 3](https://en.wikipedia.org/wiki/Doom_3) and barely being able to believe it was all running in real time on my own PC.

[<img class="mw-mmv-final-image jpg mw-mmv-dialog-is-open alignnone" src="https://upload.wikimedia.org/wikipedia/en/1/13/Doom3shadows2.jpg" alt="" crossorigin="anonymous" width="365" height="273" />](https://en.wikipedia.org/wiki/Doom_3)

The comparisons made were always to animated movies by Pixar and when could we have that level of detail in our games. When movies like Toy Story were made they were taking hours rather than milliseconds to calculate frames.

I believe, if our computers have the power, it could be the next step for our graphics. It&#8217;s a much simpler way of representing the world and more closely mimics our reality and vision than rasterizers do.

There is a concern about building renderers which support current gen consoles and our current PC graphics cards, but then also supporting the new technology.

Thankfully, in a lot of instances, the final renderer has seemed to be hot swappable for Raytracing and Rasterization. Unity and Unreal engines are also great at supporting up and coming rendering technologies as they emerge.

Futuremark is on the action with their next version of 3dMark having a [Raytracing benchmark](https://www.pcgamesn.com/futuremark-3dmark-raytracing-demo) built in.

<img class="media-element file-default" title="DXR Raytracing on and off" src="https://www.pcgamesn.com/sites/default/files/directx-raytracing-demo-2.gif" alt="DXR Raytracing on and off" width="1024" height="512" /> 

Though the Siren demo didn&#8217;t specifically mention DXR, it&#8217;s also showing how the state of the art is moving forwards in so many other areas right now.

We are going to be spoilt for ways to be amazed in the near future.



I personally think there&#8217;s a bright future for the technology and it will get more main stream acceptance, as we ever push towards digitally representing our reality.

&nbsp;

<p class="youtube-player" style="border: 0;">