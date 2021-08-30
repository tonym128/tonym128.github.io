---
author: tonym128
comments: false
date: 2018-03-02 11:38:28+00:00
layout: post
link: https://ttech.mamacos.media/2018/03/02/toe-dabbing-in-esp8266/
slug: toe-dabbing-in-esp8266
title: Toe Dabbing in ESP8266
wordpress_id: 69
tags:
- hacking
- hardware
- iot
---
{% include open-embed.html %}
{% include gtag.html %}




# The start of something small


I've always had a dream of learning electronics and I've had a [ESP8266](https://en.wikipedia.org/wiki/ESP8266) sitting around on my desk for a quite a while now.

![By Sparkfun Electronics](/images/2018/03/ESP-01.jpg) 

This board is a marvel of technology, originally it was designed as a WiFi chip, but it was made so well and flexibly, that hackers learnt that you could program this small chip to do wonderful amazing low power things via the serial port using just the [AT command set](https://en.wikipedia.org/wiki/Hayes_command_set), which is how they used to talk to modems, way back when.

An entire eco-system of tools formed around this and a community of hardware aficionados who wanted to build small pervasive electronics were born.


## The dream


![](/images/2018/02/pexels-photo-279467.jpeg)

My dream was always to build small 'throw away' electronic devices cheaply that could form some sort of network and provide access to metrics of some sort, light levels, temperatures, air pressure and layer them throughout a room and then build displays of this data. An example that I've seen recently isn't quite this but it is similar in a popular supermarket chain that shows their electricity and water usage on real time updated graphs at the entrance.

I find this sort of information which is kinda mundane being turned into something useful, fascinating.


## Turn it into a reality


![](/images/2018/02/pexels-photo-533189.jpeg)

To find a project there first needs to be something to do... so the simplest project for the ESP is to set it up as a [WiFi Access Point](https://gist.github.com/Cyclenerd/7c9cba13360ec1ec9d2ea36e50c7ff77), pretty advanced functionality for a single chip, or you can make it connect to an existing wifi network and display a button on a website to click [on and off](https://create.arduino.cc/projecthub/jaiprak/control-led-from-web-app-using-esp8266-serial-wifi-module-cdf419) . Once it's connected with this example above, it should serve a website to you regardless of where you try to browse, regardless of where you try to browse to.

The board I got has a micro usb port with a serial port chip, two buttons and easy pin outs for doing additional things like adding sensors or servos'




## The first steps into the new brave world.


![](/images/2018/02/Arduino.png)

The chip arrives blank so I had to first program the firmware using a [flasher](https://en.wikipedia.org/wiki/Firmware#Flashing) and a [ROM](https://en.wikipedia.org/wiki/Read-only_memory).

This was relatively scary as I always find my heart skips a beat when it comes time to click the flash button.

Once we have the firmware, which is only actually writing some code. I installed the [Arduino IDE](https://www.arduino.cc/en/Main/Software) and a few plugins to make it work with the ESP8266.

I found the [online code sample](https://gist.github.com/Cyclenerd/7c9cba13360ec1ec9d2ea36e50c7ff77) for doing exactly what I wanted and the code was simple enough to copy paste while still understanding every line, so that made it perfect.

![](/images/2018/03/Code.png)




## Up and running.


With the code deployed and live on the ESP, I can fire up the wireless connection wizard on my PC (and my phone) and can connect to the new WiFi network (IoT --- Free WiFi).

And it displays this page when you try to browse anything!

![](/images/2018/03/Im-just-a-bottle-WiFi.png)

No too exciting, but pretty good for a tiny little board.


## Where to from here ?


Now that I have an ESP8266 up and running and doing something useful, what more could I do ?


There's some hardware like the [Sonoff Basic  ](http://sonoff.itead.cc/en/products/sonoff/sonoff-basic)
which can let you switch electrical switches on and off using a simple programmable interface.

![](/images/2018/03/Sonoff.jpg) 

Getting the whole house hooked up to be controlled from a mobile phone is something that I find fascinating, control sound, appliances, moods, lighting.

You could for instance have a temperature sensor which knows what times of day to activate a heater for when you get home to a nice and cosy lounge.

You can have movement sensors that could play music which follows you around the house, but only in the room you're in.

The world becomes yours to control and gamify. A future I look forwards too and I'm glad I have dabbled my toes, and will definitely be back to dive in, in the coming years!


