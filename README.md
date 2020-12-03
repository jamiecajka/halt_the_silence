# README

#HaltTheSilence
This app was created as part of campaign to bring attention to the lack of LQBTQ representation in entertainment, specifically television. This page was started with only a landing page, but with plans to expand. The live webpage is located at www.haltthesilence.com.
Future plans include:
- having an articles page, which includes an index and individual article pages along with search functionality.
- user accounts that would allow admin users to upload new articles
- the ability for users to switch between English and Spanish for the main content
- a blog admin users can update
- a message board for users to share their experiences.

## Technologies
This app is currently build using Ruby version 2.7.0 and Rails 6.0.3.4, with PostgreSQL and ActiveRecord handling the database.
Devise is used for user authentication, and CarrierWave is used for image uploads.
CSS is used for styling.

## Setup
To get setup, run:
```
bundle
rake db:create
rake db:migrate
rake db:seed
rails s
```
Navigate to ```localhost:3000```
