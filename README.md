#Ashley Tindell, Josh Kushner & Chris Markel's GitHub README for [Crave](https://thecrave.herokuapp.com/)
</br>

##General Assembly Web Development Immersive (WDI) - Fall 2014, Project 3
</br>

##Overview
Crave is a web application that allows users to quickly shop for new tech products at an introductory discount. A unique feature of the app is that the user must decide within 30 seconds whether or not they "crave" the product by either purchasing or declining the product within the allotted time.

Currently, Crave leverages the Wal-Mart API to source technology products. We chose the Wal-Mart API since there wasn't a new technology API available and because we wanted a more robust backend as compared to seeding the database.

Crave was developed for a project for the Fall 2014 Web Development Immersive course at General Assembly. It was developed over a week-long sprint to model the agile software development process. For your reference, the project is available on [GitHub](https://github.com/cmarkel5/crave).

##Technologies Used
* Ruby 2.1.3
* Rails 4.1.6
* Bootstrap 3.2.0
* PostgreSQL Database
* Authentication & Authorization from scratch using [bcrypt-ruby](https://github.com/codahale/bcrypt-ruby)
* [Wal-Mart API](https://developer.walmartlabs.com/docs/read/Search_API) & [HTTParty](https://github.com/jnunemaker/httparty)
* Heroku

##User Stories Completed

* As a User, when I arrive at the Welcome Page, I can sign up
* As a User, I will be able to view the Shop Page
* As a User, I should be greeted with a homepage telling me what Crave does
* As a User, I will have 30 seconds to decide if I want to purchase or decline the item. Once the clock hits 0, Crave will decline the item and show me the next item
* As a User, when I SWIPE left, i will have declined the product and no dialog box will appear. The next product will appear.
* As a User, when i SWIPE right, I will purchase a product and it will give me a dialog box to confirm.
* As a User, I can view the Shop page without being signed in, but must sign in if I want to purchase or decline an item
* As a User, when I click Decline, I will be shown the next product and the product will not be added to My Purchases
* As a User, when I click Purchase, I will have the item added to My Past Purchases, and show me the next item
* As a User, I will be able to view products pulled from the WalMart API on the Shop page
* As a User, I can see my past purchases on the My Purchases page
* As a User, when I click Submit on the Sign Up page, my profile is create and I'm taken to the Shop page
* As a User, when I click Sign Out while logged in, my current session ends and I'm redirected to the Welcome page
* As a User, I can see the most popular products on the homepage in a D3 visualization


##Production
Explore Crave for yourself on [Heroku](https://thecrave.herokuapp.com/).

##Backlog
A full list of user stories can be found on this [Trello Board](https://trello.com/b/V7qwdpoV/crave-app). A mockup of the app is available at [Moqups](https://moqups.com/ashleytindell/CcEnkYA4/).
