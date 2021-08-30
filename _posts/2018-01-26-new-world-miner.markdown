---
author: tonym128
comments: false
date: 2018-01-26 12:14:41+00:00
layout: post
link: https://ttech.mamacos.media/2018/01/26/new-world-miner/
slug: new-world-miner
title: A miner in a new world
wordpress_id: 1
tags:
- altcoin
- bitcoin
- gpu
- mining
---
{% include open-embed.html %}
{% include gtag.html %}

![BitCoin](/images/2018/01/blockchain-3041480_640.jpg){:class="img-responsive"}

I'm a self confessed techno nerd, I find almost everything to do with  computers fascinating from reading every technology news source on the web on a daily basis to Kickstarting insane technologies, it's actually a surprise to me that I never had the urge to learn about the 'seedy underworld' of crypto.

Even now I still find it amazing how far the phenomenon has come and what levels people have gone to, to be involved in it.

With so much critical mass and not wanting to feel left out anymore, I started a journey to find out more about what crypto is and how it works.

In all honesty, it's after the fact and the bubble has actually started to pop on the last 6 months hay days of ever rising exchange rates, but I was still finally ready to read up and learn some more about what's going on, and dig my hands in a bit further than I had before.

I decided that more than for financial gain, I wanted to get in on the technology and learn start to finish what it takes to be involved.


# Mining




## What is it


At a simplistic, off the top of my head level of it, is that you make your computer work hard to validate something, this work, when done by 1000's of PC's can't be faked by any one corporation and the PoW (Proof of Work) that you do builds upon the Blocks of the work previously done (The BlockChain) to allow a decentralised network to validate a transaction on your behalf without actually involving a third party between the two parties transacting.


## What should I mine ?


Actually mining on the popular cryptos takes a lot of patience or money for a rig. So my journey started with finding a viable mining currency.

This changes on a practically daily basis. [WhatToMine](https://whattomine.com/) Is a great website for finding out what's going on the market and what you can potentially do with your gaming rig. After working out that my little gaming rig's 1070 wasn't going to bring home the $$$'s I started looking for something that I could feasably mine and make some coins off of.

A quick investigation into some algorithms shows that some are now FPGA and ASIC resistant. Bitcoin is not, so if you're not mining with ASIC's you shouldn't waste your time.

`FPGA - Fully programmable gate array, a device that you can`
`program specifically to run certain code very efficiently and fast, much`
`faster than a normal generic processor could.`

`ASIC - A circuit developed to run a specific program in hardware, VERY fast at doing a very specific task.`

Another great website is [CoinMarketCap](https://coinmarketcap.com/) where you can see all the top currencies.

For my jouney I found [Monero](https://getmonero.org/), a even more privacy orientated coin, which seems quite interesting. I also really liked the look of [TRON](https://tron.network/en.html) and [Ripple](https://ripple.com/) but unfortunately were too hard to mine and already felt a bit too mainstream for my interests. [ZCash](https://z.cash/) also cropped up a few times as really good for Nvidia cards.

Thankfully there's a couple offshoot projects like [AEON](http://www.aeon.cash/) and [SumoKoin](https://www.sumokoin.org/)

I chose SumoKoin for my learning experience.


## How to mine


There is a lot of software out there for mining, from the simple miners (which are normally only CPU), to what feels like dodgy miners (unverified). But a couple pop out quite soon in, though which ones support your GPU and the crypto you want to mine will determine which you want to use.



	
  * [CCMiner](http://ccminer.org/) - Good comprehesive miner, not always the fastest though.

	
  * [Claymore](https://github.com/nanopool/Claymore-Dual-Miner) - Recognised as a great AMD Mining software stack, supports Nvidia too.

	
  * [XMR-Stak](https://github.com/fireice-uk/xmr-stak) - A great Monero miner for AMD and Nvidia.

	
  * [MinerGate](https://minergate.com/) - Really easy to use, while it was easy to get up and running, I didn't feel like I had control over anything, which this whole new world is meant to provide you with.


I chose XMR-Stak for it's speed to ease of use, the SumoKoin website actually detailed it's setup as well.


# What else do I need


For any of the crypto's you want to get involved in you need to have a Wallet for storing and transferring funds.


## Wallet


Normally you would generate these yourself, as there is no fully trusted third part to do this. To do so, you need to download the wallet software as well as the blockchain (which can be 10's of Gigabytes big).

If you're willing to cede control you can have a third party do this on your behalf. It's safest to do this on your own, or use a very reputable exchange.


## Exchange


At some point you're going to want to turn your coin into something else, so you'll need an exchange which can handle the exchange of one token to another, they normally do this by providing you with wallets on the exchange in the different crypto's you want to use. Some exchanges will even allow you to transfer back into [fiat](https://www.fool.com/investing/general/2015/12/06/fiat-currency-what-it-is-and-why-its-better-than-a.aspx) letting you spend your hard earned $$$'s.

SumoKoin is currently only listed on [Cryptopia](https://www.cryptopia.co.nz/) A well regarded exchange from my travels online. [LiveCoin](https://www.livecoin.net/) The one I used to succesfully make my conversions between crypto's


## Pool


Even with the new currencies the amount of processing power being thrown at them is staggering, to find the key to the block chain is like searching for a needle in a haystack, you could possibly get lucky on your own or you could _pool_ your procesing together with others (for a small fee) and collectively as a group split the bounty you get for successfully finding a key.

I chose to go with the [Official SumoKoin pool](https://pool.sumokoin.com)

Other ones I found included [Supernova.cc](https://suprnova.cc/) - Main coins, but not Sumo [FlyPool](http://flypool.org/) - Seemed quite nice, have some unconfirmed balances there, no transfers.


# Lets get mining


Once you have a wallet, you setup your mining software to mine to the pool, either to your account at the pool, or to your wallet directly.

With your software configured, off you go.


## Some time later


For mining SumoKoins, I determined my end goal was to mine enough to make a profit, aparently I was going to mine a revenue or $4 / day, so from a profit expecation I should have come out with roughly $3.40 per day.

I decided on 5 SumoKoins for my experiment and this took about a week to mine with my hardware and the current difficulty on the coin.

Thus the task of retreiving cash from my hard earned coins started.


### Get the money in your physical wallet


Depending on the pool your mining too you could have a different flow.

For the main SumoKoin pool, I was mining directly to my wallet and whenever I hit a threshold, 0.5 SumoKoin's, they would transfer the cash from my unconfirmed balance on the pool to my wallet which I had setup to mine to.

For another pool you would mine to your account and then have to initiate a transfer at a later date which is also over a threshold they hold you to.

Now that you have control over you money, it's time to move it to an exchange which you can get it into the crypto / currency you need.

In my case I transferred it



	
  * From my wallet

	
  * To an exchange which supported it (very few for some altcoins, sometimes only one)

	
  * Exchanged the Sumo into Ethereum

	
  * Move to an exchange in my country which supported Ethereum and my local currency.

	
  * Move onto my bank card


The whole process to about a day all in all with moving around, mostly waiting time to confirm.

In the case of the crypto currencies there is normally waiting time to confirm that you didn't try to double transfer the cash or fake it, and in the case of banks, they just take a day or two.

At the end of that I made half of what the coins where worth as when I started, most of it was actually the withdrawl fee which was static, but hurt quite a bit at the low volume I was moving around.




### Where to from here ?

I honestly thought I knew more about the process when I started and learnt quite a lot. The setting up of the wallets and the mining clients as well as keeping it all running smoothly was very interesting. The process of moving the coins around was actually quite complicated to work out, but once I had it I was very happy with the process.

The other things I'm interested in is the idea of a mining rig with proper operating system support, actual running of a Crypto currency, the pools and the exchanges. I still think there's a lot for me to learn here and I look forward to exploring it more.


