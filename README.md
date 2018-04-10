# README

**Title**: BearDens  
**Team Members**: Debbie Pao, Zachary Yiu  
**Demo Link**: TBD

**Idea**: An application where users can create and post listings for subleased parking for both cars and bicycles in the Berkeley area.

**Models and Description**:  
Listing  
* has location, price, and description text

User  
* has name, email, many comments/messages/favorites
* Sublessor Users have rating, many listings
* certain users are Sublessors and can post listings

Favorites
* has listing id, user id

Comments
* has listing id, user_from id, time, and body

Messages
* has user_to id, user_from id, time, and body

**Features**:
* Users can log in
* Sublessor Users can create listings
* Users can save listings
* Users can comment on listings
* Users can view comments on listings
* Users can rate Sublessor Users
* Users can message Sublessor Users

**Gems**:
* google_maps_service https://rubygems.org/gems/google_maps_service

**Division of Labor**:
* Debbie: Controllers part of Models
* Zachary: Views and part of Models
