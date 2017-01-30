---
id: 3
layout: post
title:  "Netflix's $1 Million Algorithm"
author: Gabriel Montalvo
author_link: https://twitter.com/gmontalvoriv
date: 2017-01-29T20:07:46.425Z
categories:
comments: true
---

First, let me provide some context. I'm one week away from starting my internship at Microsoft, where I will be working on very interesting problems in the Data Science and Business Intelligence fields. Over the past month I've been doing some basic research on [predictive modeling](https://en.wikipedia.org/wiki/Predictive_modelling) and analytics and came across the Netflix $1 million algorithm challenge. Even though this is old news (I did read about it a couple of years ago), I found it very interesting and decided to write this post to explore the event, the winning algorithm and Netflix's current recommendation system.

### The Netflix Prize

<br>

<center><img src="/assets/posts/images/netflix.png"></center>

<br>

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

You can read the winning team's paper here: 

[The BellKor Solution to the Netﬂix Grand Prize 2009 - Netflix Prize](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&cad=rja&uact=8&ved=0ahUKEwjI4Z6UiOjRAhUollQKHWg4Cd0QFgg0MAM&url=http%3A%2F%2Fwww.netflixprize.com%2Fassets%2FGrandPrize2009_BPC_BellKor.pdf&usg=AFQjCNGYjYEo-H2X5xyyaHpkRmGr0dr5lw&sig2=lmwy6hubEdFXxfGvZtp6IA)

<br>

### The Rating Prediction Algorithm

Everything you do on the website and all the actions that you take as a Netflix customer can be reduced to some form of data. This data is used to create a mathematical model that will help Netflix predict which movies you might enjoy watching. The more data they gather the closer its algorithm gets to predicting your movie prefences. The system relies on [Collaborative Filtering](https://en.wikipedia.org/wiki/Collaborative_filtering), plugging user information about a particular product into a mathematical equation. This equation will then provide the recommendations for other products that a user might enjoy.

<br>

### Netflix's Current Recommendation System

> "Let me start by saying that there are many recommendation algorithms at Netflix. People usually refer to the "rating prediction" algorithm that was researched in the Netflix Prize as the "Netflix Recommendation Algorithm", but that is by no means the only or the most important of the algorithms in the Netflix recommendation system." - <b>Xavier Amatriain</b>, former Research/Engineering Director at Netflix

The <u>rating prediction</u> algorithm is only one of the algorithms that comprise the Netflix recommendation system. With that in mind let's focus on the rating prediction algorithm.

"There are two algorithms that are being used in production right now: Restricted Boltzman Machines (RBM) and a form of Matrix Factorization" - said Xavier Amatriain. 

Restricted Boltzman Machines are, simply put, fancy neural networks. There are some tricks to make RBMs work in the context of collaborative filtering. The form of Matrix Factorization in use is the so-called SVD++ developed by the winning team of the prize. This is basically an asymmetric form of SVD that can make use of implicit information (just as RBMs do also).

> "Those two algorithms already appeared in the 2007 Progress Prize. In production they are combined using a linear blend. So, why aren't the other 100+ algorithms that were combined with a Gradient Boosted Decision Tree used? There are several reasons that include engineering complexity and the fact that, as I mentioned before, rating prediction is not the main concern nowadays. There are many other recommendation algorithms from personalized ranking to page optimization that make up the Netflix recommendation system." - Xavier Amatriain

As Xavier pointed out, there are a large number of different machine learning techniques being used in the recommendation system. However, let's not forget that the Netflix's Price outcome is still a key component in the current recommendation system.

<br>

### Azure Machine Learning Studio - The Matchbox Recommender Experiment

There are a number of ways to get familiarized with the whole process of building and testing a machine learning algorithm. [Microsoft's Azure ML Studio](https://studio.azureml.net/) service is a great tool for both beginners and experts to build and deploy machine learning models and consume the results through a web service. It provides a wide variety of samples to help you get started. After registering to the service you can play around with [The Matchbox Recommender experiment sample](https://gallery.cortanaintelligence.com/Experiment/3a02931f94114f47b4512dd9179b515e) to understand how a recommendation system is designed and implemented.

<img src="{{ site.baseurl }}/assets/posts/images/data-ratings.png" data-action="zoom">

<br>

<figure>
  <img src="{{ site.baseurl }}/assets/posts/images/model-1.png" data-action="zoom">
  <figcaption>Matchbox recommender's model preview</figcaption>
</figure>

<br>

This model provides some great insight into the low-level aspects of a recommendation system using the [IMDB](http://www.imdb.com/) Movie Titles dataset and a predefined Movie Ratings data source for your convenience.

<br>

### Future Work

> "A very realistic vision is we should get to the point where you just turn on your Netflix app and automatically a video starts to play that you’re very happy with," says Netflix's Vice President of Innovation Carlos Gomez-Uribe. "If you’re not, you may have to flip once or twice and end up with something that you’re very, very happy with. Only in, say, 10-to-20 percent of sessions [will you] escape into ... browse mode."

<img src="{{ site.baseurl }}/assets/posts/images/netflix-homescreen.jpg" data-action="zoom">

With more personalization options and more users signing up for the service, the recommendations system becomes better as the algorithms are smart enough to account for changing habits during the week. Starting in 2015, in an effort to achieve a more personalized home page, Netflix released the page generation algorithm to construct the optimal mix an order or rows for each user. It takes the highest-scoring titles of thousands of possible rows, and puts the highest scoring row on top.

I think it's quite amazing how all these algorithms work together to provide the best possible experience for the user, and how integral this system is to the success of one of the most popular and recognized streaming services in the Internet.