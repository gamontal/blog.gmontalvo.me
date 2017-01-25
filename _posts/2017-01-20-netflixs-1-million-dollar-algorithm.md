---
id: 3
layout: post
title:  "Netflix's $1 Million Algorithm"
author: Gabriel Montalvo
author_link: https://twitter.com/gmontalvoriv
date:   2017-01-20T16:07:12.063Z
categories:
comments: true
---

First, let me provide some context. I'm one week away from starting my internship at Microsoft, where I will be working on very interesting problems in the Data Science and Business Intelligence fields. Over the past month I've been doing some basic research on [predictive modeling](https://en.wikipedia.org/wiki/Predictive_modelling) and analytics and came across the Netflix $1 million algorithm challenge. Even though this is old news (I did read about it a couple of years ago), I found it very interesting and decided to write this post to explore the event, the winning algorithm and Netflix's current recommendation system.

### The Netflix Prize

<center><img style="margin: 50px;" src="/assets/posts/images/netflix.png"></center>

In 2006 the web-based DVD rental company offered a million dollars to the first person or group that could take its customer data and create a model that would show a 10% improvement over ***Cinematch*** (Netflix's 2006 algorithm).

> Netflix provided a *training* data set of **100,480,507 ratings** that **480,189 users** gave to **17,770 movies**.  Each training rating is a quadruplet of the form `<user, movie, date of grade, grade>`. The user and movie fields are integer IDs, while grades are from 1 to 5 (integral) stars. The *qualifying* data set contains over 2,817,131 triplets of the form <user, movie, date of grade>, with grades known only to the jury. 

The final standing of the Leaderboard at that time showed that two teams met the minimum requirements for the Grand Prize. "The Ensemble" with a 10.10% improvement over Cinematch on the Qualifying set, and "BellKor's Pragmatic Chaos" with a 10.09% improvement over Cinematch on the Qualifying set.

On September 18, 2009, Netflix announced team "BellKor's Pragmatic Chaos" as the prize winner, and the prize was awarded to the team in a ceremony on September 21, 2009. "The Ensemble" team had in fact succeeded to match BellKor's result, but since BellKor submitted their results 20 minutes earlier, the rules award the prize to them.

<br>
<figure>
  <img src="https://digit.hbs.org/wp-content/uploads/sites/2/2015/10/bigcheck.jpg" data-action="zoom">
  <figcaption>The BellKor's Pragmatic Chaos Team</figcaption>
</figure><br>

For 3 years, more than 20,000 teams registered for the prize. It goes without saying that this was a hard fought endeavor for all the teams involved.

In 2010, the company announced another prize competition called The Sequel, but decided not to pursue it in response to lawsuit and Federal Trade Commission privacy concerns.

<br>

### The Rating Prediction Algorithm

Everything you do on the website and all the actions that you take as a Netflix customer can be reduced to some form of data. This data is used to create a mathematical model that will help Netflix predict which movies you might enjoy watching. The more data they gather the closer its algorithm gets to predicting your movie prefences. The system relies on [Collaborative Filtering](https://en.wikipedia.org/wiki/Collaborative_filtering), plugging user information about a particular product into a mathematical equation. This equation will then provide the recommendations for other products that a user might enjoy.

<br>

### Netflix's Current Recommendation System

> "Let me start by saying that there are many recommendation algorithms at Netflix. People usually refer to the "rating prediction" algorithm that was researched in the Netflix Prize as the "Netflix Recommendation Algorithm", but that is by no means the only or the most important of the algorithms in the Netflix recommendation system." - Xavier Amatriain, former Research/Engineering Director at Netflix 

