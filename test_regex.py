import re

fm = """author: tonym128
comments: false
date: 2018-01-26 12:14:41.000000000 +00:00
layout: single
title: A miner in a new world
tags:
- altcoin
- bitcoin
- gpu
- mining
excerpt: "{:class=\"img-responsive\"}\r\n\r\nI'm a self confessed techno nerd, I find
  almost everything to do with  computers fascinating from reading every technology
  news source on the web on a daily basis to Kickstarting insane technologies, it's
  actually a sur..."
"""

fm = re.sub(r'^excerpt:.*?(?=\n\S|\Z)', '', fm, flags=re.MULTILINE | re.DOTALL)
print(fm)
