---
author: tonym128
comments: false
date: 2023-08-20 10:22:41+00:00
title: It's Story Time, a Raspberry Pi journey of ML, publishing and podcasting
layout: post
---
{% include open-embed.html %}
{% include gtag.html %}

# Table of Contents

1. [TLDR;](#tldr)
2. [The goal](#goal)
3. [What were the pieces](#nailing)
4. [What went wrong](#wrong)
5. [What went right](#right)
6. [What did I learn](#learn)
7. [Where to from here](#where)

{:refdef: style="text-align: center;"}
![](/images/2023/storytime/synopsis.jpg)
{: refdef}

<a name="tldr">

# TLDR;
Go check out my [Story Time Podcast](https://podcasts.apple.com/us/podcast/ai-daily-short-story/id1703394839), there's a few stories generated a day using TinyStories and it's the converted to a html page, uploaded to GitHub pages, after that it runs a process to create a mp3 using Piper and finally a rss and atom podcast feed.

It all runs on a Raspberry Pi 4. The same one serving [shhh bot](https://ttech.mamacos.media/2023/08/13/keeping-it-quite-whispercpp-raspberry-pi-python-and-a-telegram-bot.html)

Check out the [website](https://ttech.mamacos.media/storytime/)

Check out the [podcast](https://podcasts.apple.com/us/podcast/ai-daily-short-story/id1703394839)

Check out the [code](https://GitHub.com/tonym128/storytime), it doesn't include piper, but it's the stock code.

Link to paper on [TinyStories](https://arxiv.org/abs/2305.07759)

Link to [Piper](https://GitHub.com/rhasspy/piper) Text to Speech engine.

<details>
  <summary>Listen to a the stories here</summary>
	<iframe allow="autoplay *; encrypted-media *; fullscreen *; clipboard-write" frameborder="0" height="450" style="width:100%;max-width:660px;overflow:hidden;border-radius:10px;" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-top-navigation-by-user-activation" src="https://embed.podcasts.apple.com/us/podcast/ai-daily-short-story/id1703394839"></iframe>
</details>

<a name="goal">

# Goal
{:refdef: style="text-align: center;"}
![](/images/2023/storytime/goal.jpg)
{: refdef}

Reading is a big part of our family. We all read, even those too young to read, will happily listen to their stories at bedtime, or any other time. Sometime when I'm a bit too tired, I sometimes dream that I could play them a podcast story instead. Our Google Home is able to tell stories whenever you ask it "Hey Google, tell me a story", but eventually those run out (about 50 or so, that I've heard). Often, I wonder what could be done in this space.

With the new generation of machine learning is there a way to make endless stories ? Could they be unique and fun and have a moral grounding ? Could I run it all myself on a Raspberry Pi, hidden in a corner somewhere ?

<a name="nailing">

# What were the pieces
{:refdef: style="text-align: center;"}
![](/images/2023/storytime/nailing.jpg)
{: refdef}

## Hosting
I've always enjoyed using GitHub pages, this blog is hosted on it and it's fun to see what you can achieve with a static front end and something more dynamic going on in the backend.

It's a simple git push to get your website updated and GitHub will take care of the hosting, SSL and as a bonus it's free.

The backend for GitHub pages is [Jekyll](https://jekyllrb.com/) and it uses [Markdown](https://daringfireball.net/projects/markdown/) which is a really simple text format to use for html pages. Putting a # and a space will give you a header for instance.

Mostly you would write these pages yourself then publish them when you have something new to share. I wanted some automation in this space and found some python snippets to write a valid markdown file.

```python
 
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Create a new post')
    parser.add_argument("--content", type=str, help="A filename for content for the post")
    parser.add_argument("--date", type=str, help="Provide a date in format yyyy-mm-dd", default="2000-01-01")
    parser.add_argument("--tags", type=str, help="Provide a comma separated list of tags", default="Story")
    parser.add_argument("--title", type=str, help="Provide a title", default="default")
    parser.add_argument("--author", type=str, help="Provide a name for the author of the post", default="Tony Mamacos")
    args = parser.parse_args()

    now = datetime.now()
    datenow = str(datetime.today()).split()[0]
    if (args.date == "2000-01-01"):
        args.date = datenow
    current_time = now.strftime("%H:%M:%S")

    write_frontmatter(args, current_time)

```

I supply all the parameters on the command line and I'll get a new post.

## Writing a Story
{:refdef: style="text-align: center;"}
![](/images/2023/storytime/nailing2.jpg)
{: refdef}
[TinyStories](https://arxiv.org/abs/2305.07759) is an amazing new Large Language Model or [LLM](https://www.techtarget.com/whatis/definition/large-language-model-LLM) showing what is possible with a small model. It's a LLM designed to make short stories, using a limited set of words and a small model size. The biggest version I could find was a 110 million parameter mode, normally these models are talked about in at least 10's of billions for the ones that you would want to run locally, and 100's of billions of parameters for ones you would want a larger company to be running on your behalf.

Pairing this with [llama.cpp](https://GitHub.com/ggerganov/llama.cpp), we have a small model we can run on a Pi 4.

Here's a sample story
```
Once upon a time, there was a gray cat. The cat loved to eat popcorn. One day, the cat went to the kitchen to find some popcorn.
The cat found a big bowl of popcorn on the table. The cat was very happy. It started to eat the popcorn very fast. The cat wanted to finish the popcorn before it was all gone.
But then, the cat ate too much popcorn. It started to feel sick. The cat ate so much popcorn that it could not move. In the end, the gray cat was very sad and sick because it ate too much popcorn.
```

## Text to Speech
[HomeAssitant](https://www.home-assistant.io/) is a powerfull home automation system and it has gone strength to strength this year. In my home we use it to control the lights, geyser, inverter and many more small tasks as they come up. This runs on a Raspberry Pi 3, I got before the drought. This year is the [year of the voice](https://www.home-assistant.io/blog/2022/12/20/year-of-voice/) and as part of that they integrates [Whisper](https://GitHub.com/ggerganov/whisper.cpp) for speech to text and [Piper](https://rhasspy.GitHub.io/piper-samples/) for Text to Speech.

Using Piper on a Pi 4, you can get faster than realtime Text to Speech. I'm only using a basic version of it, so I supply the full text of what I want and it'll convert it for me.

## Podcast
Since Podcasts use a RSS feed for aggregation, I thought this would be simple, but actually it's a mish mash of the RSS and Atom feeds and specific values have to be supplied in it, some for Apple, Google or Spotify. 

I found a useful library [python-feedgen](https://GitHub.com/lkiesow/python-feedgen) to help along this process and generated a custom RSS and Atom feed for the website, just for podcasting. The website itself still has the RSS feed for the text versions of the stories.

I was pleasantly suprised that Apple was the clearest about what was missing and the first real integration I got working. Google was able to load my RSS feed without issue for my personal use, but wouldn't load it into the directory. Spotify was the last to pass the test, once I had fixed the suggestions from Apple. As of a day of getting this all working on a weekend, Google and Spotify have not approved my podcasts yet for easy consumption. I am hopeful this will get a review early next week during normal business hours.

If you're ever in a position wondering what is required in a Podcast RSS feed, take a look at the [code](https://GitHub.com/tonym128/storytime/blob/main/create_podcast.py), it seems to be working.

```python
def createPodcastRSS():
    fg = FeedGenerator()
    fg.load_extension("podcast")
    fg.title("AI Daily Short Story")
    fg.podcast.itunes_category("Technology", "Podcasting")
    fg.podcast.itunes_image("https://GitHub.com/tonym128/storytime/raw/main/ai_generated_stories_3k.png")
    fg.podcast.itunes_author("Tony Mamacos")
    fg.podcast.itunes_owner('Tony Mamacos', 'tmamacos@gmail.com')
    fg.image("https://GitHub.com/tonym128/storytime/raw/main/ai_generated_stories.png")
    fg.author({"name": "Tony Mamacos", "email": "tmamacos@gmail.com"})
    fg.language("en")

    fg.id("https://ttech.mamacos.media/storytime")
    fg.link(href="https://ttech.mamacos.media/storytime", rel="self")
    fg.description("A daily pod cast of an AI generated short story")
```

## Linking it together
{:refdef: style="text-align: center;"}
![](/images/2023/storytime/linking.jpg)
{: refdef}

I have a SystemD service setup to run a bash script, which will generate a new story a few times a day. 

Once it's generated the story and created a new post, there is a second process, which will grab the text for all the stories, put it into files in the Piper runtime directory and create text to speech wave files for any text file which doesn't have a corresponding wave file. After this, it runs another process to convert the generate a Mp3 of the file and puts it into the StoryTime repository.

The third process will recreate the PodCast RSS and Atom file with the correct fields, and finally it updates the repository with the new story post, podcast feeds and audio files, which it uploads.

<a name="wrong">

# What went wrong
{:refdef: style="text-align: center;"}
![](/images/2023/storytime/wrong.jpg)
{: refdef}

I really did struggle with the Podcast feed generation and making Podcast files that applications would accept. Finding a library to help me generate the files was a big help and having Apple tell me what was missing was super helpful. This isn't something that people would normally encounter when using a specific podcast service as they would upload their audio files and the Podcast feed is automatically generated by the underlying service provider and even potentially propogated to all the different Podcast feed services.

I believe I'm waiting on human validation of the source material for Google and Spotify, but hopefully this will pass muster on their sites.

Another issue I had was with linking the audio assets. I thought I would be able to do this from my domain and GitHub pages, but I struggled with that, so I have linked them directly to the GitHub repository as well as the Podcast Feed, which has worked without issue so far, I imagine for the Podcast only, I could just as easily host it from a S3 Storage bucket with HTTP access enabled and my application could upload it directly there.

<a name="right">

# What went right
{:refdef: style="text-align: center;"}
![](/images/2023/storytime/right.jpg)
{: refdef}

Story generation with TinyStories was super fun, I have read hundreds of them myself and while I don't prompt for the website, I did experiment for a bit with sending through the first line of text and having TinyStories try to work with it. It was interesting to see how it dealt with difficult concepts or words that it didn't have in it's vocabulary.

Text to speech was blisfull, Piper worked like a dream and I even stuck with the default voice, which has quite an interesting accent, I am hoping people will feel relaxed listening to a minute long story which sometimes gets really close to hitting the mark.

The GitHub pages took a bit of fiddling to automate, but overall went really easily and I was glad for having a website up and running really quickly.

<a name="learn">

# What did I learn
{:refdef: style="text-align: center;"}
![](/images/study.png)
{: refdef}

The TinyStories LLM was fun to play with and see it running on a Pi 4 in under a minute for a story. The text to speech engine, Piper, also runs just as fast, so all out this could produce a massive amount of stories a day, but I think the value 2 to 4 a day, make it's into something I will be happy to have in my Podcast feed.

Hosting a podcast, was an interesting experience, it was all new to me. Seeing all the service providers for putting up a Podcast and their fees was something I wasn't aware of, having the host the files yourself was something I imagined, but all this infrastructure and paid services for the privledge was something I was unware of.

Piper is already a big part of my HomeAssitant setup and it was great to get it running locally and independantly for my own project.

<a name="where">

# Where to from here
{:refdef: style="text-align: center;"}
![](/images/map.png)
{: refdef}

I could tweak the pages some more, but I am pretty happy with the outcome. I had imagined that having a custom story generator and feeds for specific people, childrens names, themese for story would be amazing, my experimenting with TinyStories showed me it has a relatively small subset of names and the stories somehow quite often fall flat by the end even when they have a lot of promise. Thematically, there's a very consistant theme drive, which can make the stories a little too predicatable, though sometimes, it comes up with a story that very pleasantly surprises me. It is a very small model, so I have no issues with the problems presented, but expanding the service might need a bigger model.

I hope you enjoyed this blog and have some fun listening to the stories, maybe even subscribe to the Podcast. I don't see myself shutting it down anytime soon, so hopefully there'll be a few hundred stories there forever.