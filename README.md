# 
Code Yourself API
======

Code Yourself is a pure JavaScript SPA where users can create accounts and make posts about coding projects they are working on. Other users can comment to offer help and visit the github repository for the project. Users can "like" posts as well. Fetch requests connect to a RESTful Rails API and SQLite backend.

![](codeYourself.gif)



## Overview

  This API was created to contain the data used in the Code Yourself app. It stores user data and posts from the frontend: https://github.com/kylefarmer85/mod3-project-frontend

* Ruby version
  - Ruby '2.6.1'
  
## How to run the API
  - Clone the frontend and the backend repos
  - Run `$ bundle install`
  - Next, migrate the database `$ rails db:migrate`
  - To start the server run `$ rails s`
  - The API will begin running on localhost:3000
  - Open the frontend with a live server extension
  
  
