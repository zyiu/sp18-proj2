# README

**Title**: BearDens  
**Team Members**: Debbie Pao, Zachary Yiu  
**Demo Link**: TBD

**Idea**: An application where users can create and post listings for subleased parking for both cars and bicycles in the Berkeley area.

**Models and Description**:  
Listing  
* has location, price, and description text

User  
* has name, email, many comments/favorites
* Users have rating, many listings

Favorites
* has listing id, user id

Comments
* has listing id, user_from id, time, and body

**Features**:
* Users can log in
* Sublessor Users can create listings
* Users can save listings
* Users can comment on listings
* Users can view comments on listings
* Users can rate Users

**Gems**:
* gmaps4rails https://rubygems.org/gems/gmaps4rails

**Division of Labor**:
* Debbie: Controllers part of Models
* Zachary: Views and part of Models
