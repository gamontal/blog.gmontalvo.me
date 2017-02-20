---
id: 2
layout: post
title:  "Installing Quake III Open Arena on the C.H.I.P. Microcomputer"
author: Gabriel Montalvo
author_link: https://twitter.com/gmontalvodev
date:   2017-01-19T22:07:31.352Z
categories: tutorial
comments: true
---

Why? I bought this thing a couple months ago, but I never really had the time to actually do something with it so I decided to do a just-for-fun weekend software project.

### What is C.H.I.P. and the PocketCHIP?

> "**[C.H.I.P.](https://docs.getchip.com/chip.html#introduction)** is built for making - packed with a powerful processor, 4 GB of storage, stereo audio, video out, and lots of connections for playing and making your projects and products. The CHIP Operating System is built for doing: browse the ‘net, send email, play video games, listen to music, write a novel, watch a video, or learn programming. And because it’s based on the popular Linux Debian, if there’s something you need, you can probably install it." - Next Thing Co.

The $9 C.H.I.P. Microcomputer:

<img src="{{ site.baseurl }}/assets/posts/images/chip1.jpg" data-action="zoom">

**[PocketCHIP](https://docs.getchip.com/pocketchip.html#welcome-to-pocketc-h-i-p)** is a game console, a portable synthesizer, and a Linux field terminal. The PocketCHIP comes with a bunch of indie games from the PICO-8 fantasy game console and some other prebuilt applications.

For $69 you get:

  - the C.H.I.P.
  - a LiPo battery
  - the PocketCHIP clear casing (internal screen and keyboard)
  - 6 built-in applications
    - PICO-8 - play, create, share 8-bit games
    - SUNVOX - listen or compose electronic music
    - Terminal - use a Linux shell to run commands
    - Write - a lightweight text editor
    - File Browser - a graphical file browser
    - Help - official docs, built into to PocketC.H.I.P

<div class="video-wrapper">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/2vPpA5DI94I" frameborder="0" allowfullscreen></iframe>
</div>

<img style="background-color: #FFFF66;" src="{{ site.baseurl }}/assets/posts/images/handycomp.png" data-action="zoom">

Visit [Next Thing Co. Docs](https://docs.getchip.com/) for more information.

### Flashing the C.H.I.P.

Before you do anything, make sure you update the C.H.I.P. with the latest image. Use the [online flasher](http://flash.getchip.com/) and update your PocketC.H.I.P. to the new alpha image with GPU acceleration. Flashing PocketC.H.I.P. will overwrite all of the data, but also installs an MLC NAND driver which gives you the full 8GB of storage space.

<img src="{{ site.baseurl }}/assets/posts/images/chip2.jpg" data-action="zoom">

Once the flashing process is completed, put the C.H.I.P. back in the unit and connect it to a WiFi network.

<br>

### Update the Package List

Back on the PocketCHIP. open the *Terminal* application and type the following command to update your packages list.

```
$ sudo apt update
```

***Note***: When prompted for your password, type `chip` and press enter.

<br>

### Install GIT & Clone Quake III

In order to download the Quake III source code you need install the *git* version control system. Type the following command to install *git* and clone the source code

```
$ sudo apt install git && git clone https://github.com/NextThingCo/ioquake3-gles
```

<br>

### Build Quake III

Change directories and run the `build.sh` script located at the root of the `ioquake3-gles` project that we just cloned.

```
$ cd ioquake3-gles && ./build.sh
```

***Note***: The building process takes a while, so you should probably go make yourself a sandwish.

<br>

### Run the Game

If everything went well, type the following command to start Quake 3 Open Arena

```
$ openarena
```

<img style="" src="{{ site.baseurl }}/assets/posts/images/openarena-prev-1.jpg" data-action="zoom">
<img style="" src="{{ site.baseurl }}/assets/posts/images/openarena-prev-2.jpg" data-action="zoom">
<img style="" src="{{ site.baseurl }}/assets/posts/images/openarena-prev-3.jpg" data-action="zoom">

Pretty straight forward, right? You can also create your own servers where other people can join in and play. You can read more about it [here](http://blog.nextthing.co/multiplayer-fragfest-quake-iii-pocketc-h-i-p-lan-party/).