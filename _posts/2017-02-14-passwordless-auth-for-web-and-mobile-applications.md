---
id: 4
layout: post
title:  "ALTER TABLE users DROP COLUMN password;"
author: Gabriel Montalvo
author_link: https://twitter.com/gmontalvodev
date:   2017-02-14T02:01:53.141Z
categories:
comments: true
---

As a user, how do you keep track of all your passwords? Do you use the same password for all your accounts? Do you have the necessary resources to implement basic password authentication? What about user experience? How often do your users sign out/sign in? These are some of the questions that may arise in the early stages of design (sometimes during development) of your project. Going passwordless can have a significant impact on security and user experience.

From a coding perspective, it is very easy to make mistakes when it comes to authentication. There so many things you need to consider; Using the right hashing algorithm, storing the password in a database, validation, password reset, secure data transfers between client and servers and so on. Of course, the right authentication method depends on the kind of software you're building. Modeling and actually implementing authentication can be very complex and sometimes even dangerous if you're doing it yourself. 

### Going Passwordless

#### From the article *[Passwords are Obsolete](https://medium.com/@ninjudd/passwords-are-obsolete-9ed56d483eb#.7kl7qt4y3)*:

> How passwordless authentication works:

> 1. Instead of asking users for a password when they try to log in to your app or website, just ask them for their username (or email or mobile phone number).
> 2. Create a **temporary authorization code** on the backend server and store it in your database.
> 3. Send the user an **email** or **SMS** with a link that contains the code.
> 4. The user clicks the link which opens your app or website and sends the authorization code to your server.
> 5. On your backend server, verify that the code is valid and exchange it for a **long-lived token**, which is stored in your database and sent back to be stored on the client device as well.
> 6. The user is now logged in, and doesn’t have to repeat this process again until their token expires or they want to authenticate on a new device.

### Token-Based Authentication for Mobile Applications

Redirecting a user to your web app after a successful validation can be fairly straight forward. However, token-based authentication for mobile applications can get a bit tricky and there isn't much information on how to do this out there. After sending an email or SMS to check user identity, you need to redirect the user to your application and verify the authorization code. This is where **deep linking** comes in.

> Deeplinking is a methodology for launching a native mobile application via a link. Deeplinking connects a unique url to a defined action in a mobile app, seamlessly linking users to relevant content.

Beth Kindig of *Vserv.Mobi* explains the concept behind deep links and the many beneficial aspects and solutions to help achieve the best possible user experience.

<div class="video-wrapper">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/ICaeIFZJyN8" frameborder="0" allowfullscreen></iframe>
</div>

#### Using BranchIO for generating authorization codes with deep linking capabilities

> [Branch](https://branch.io/) increases mobile conversion, retention, and engagement through deep linking, user routing, and personalized app experiences.

Branch allows you to dynamically create authorization links through their service. You can check out their SDK's here: [https://dev.branch.io/getting-started/sdk-integration-guide/](https://dev.branch.io/getting-started/sdk-integration-guide/)

### Authentication As A Service

Outsourcing the authentication process can help reduce cost of operations and speed up the developement process.

#### Auth0

[Auth0]() provides security solutions for developers who may not have the knowledge or the tools to implement a passwordless solution. The company offers free accounts to help you get started with different authentication methods for your app or website.

<div class="video-wrapper">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/dvhIFucjE74" frameborder="0" allowfullscreen></iframe>
</div>

#### Twilio

Twilio allows software developers to programmatically make and receive phone calls and send and receive text messages using its web service APIs.

<div class="video-wrapper">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/MR5sAZUlx_0" frameborder="0" allowfullscreen></iframe>
</div>

### Conclusion

Like I said before, I don't claim that passwordless authentication works everywhere, but more and more projects are starting to go in this direction and the experience is far more seemless when you have a strong authentication system and your users don't have to remember passwords. 