---
id: 5
layout: post
title:  "GitHub Desktop For Visual Studio Team Services Projects"
author: Gabriel Montalvo
author_link: https://twitter.com/gmontalvodev
date:   2017-02-20T01:45:39.337Z
categories: tutorial
comments: true
---

### Commit and Push your Project changes using the [GitHub Desktop Client](https://desktop.github.com/)

From the VSO website go to your projects page and hover over your avatar image to display your settings and click on *Security*.

<img src="{{ site.baseurl }}/assets/posts/images/vsosec.png">

Under *Security*, go to *Alternate authentication credentials* to enable and set a secondary username and a password and save your changes. Assuming you already cloned a TFS project to your local machine, open up GitHub Desktop and add the project to the list.

After commiting your changes and syncing you will be asked to provide a username and password for your *username.visualstudio.com* account. If there were no problems when setting your username and password you should be able successfully authenticated and allowed to push your changes right from GitHub Desktop.

That's it. 