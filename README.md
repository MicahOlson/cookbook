# _Cookbook_

### By _**Micah Olson & Geof Rosenmund**_

#### _This project was created solely for the education of the author(s) and is not in a complete or portfolio-ready state. It should not be considered representative of professional work._


[Epicodus](https://www.epicodus.com/) - [Ruby and Rails](https://www.learnhowtoprogram.com/ruby-and-rails/) - [Week 4](https://www.learnhowtoprogram.com/ruby-and-rails/rails-with-active-record) - [Two-Day Project](https://www.learnhowtoprogram.com/ruby-and-rails/rails-with-active-record/employee-tracker-recipes-two-day-project)


#### Date created: 03/18/2021
---

## Technologies Used

* _Ruby 2.6.5_
* _Rails 6.1.3_
* _Embedded Ruby (ERB)_
* _pg 1.2.3_
* _Webpacker 5.2.1_
* _jQuery Rails 4.4.0_
* _Rspec Rails 5.0.0_
* _Pry 0.14.0_
* _Byebug 11.1.3_
* _PostgreSQL 13.2_
* _Bundler 2.2.11_
* _Puma 5.2.2_
* _Launchy 2.5.0_
* _Bootstrap-Sass 3.4.1_
* _git 2.30.0_
---

## Description

_Rails with Active Record: Recipe Box_  
This app allows users to keep track of recipes, implementing the following user stories:  

* As a user, I want to add a recipe with ingredients and instructions, so I remember how to prepare my favorite dishes.
* As a user, I want to tag my recipes with different categories, so recipes are easier to find. A recipe can have many tags and a tag can have many recipes.
* As a user, I want to be able to update and delete tags, so I can have flexibility with how I categorize recipes.
* As a user, I want to edit my recipes, so I can make improvements or corrections to my recipes.
* As a user, I want to be able to delete recipes I don't like or use, so I don't have to see them as choices.
* As a user, I want to rate my recipes, so I know which ones are the best.
* As a user, I want to list my recipes by highest rated so I can see which ones I like the best.
* As a user, I want to see all recipes that use a certain ingredient, so I can more easily find recipes for the ingredients I have.


## Database Schema
The database for this application has the following tables and relationships:
<div><img src="app/assets/images/cookbook_schema.PNG" alt="Project Schema Visualization" width = 350 ></div>

---

## Requirements
* You will need to use your system's **terminal emulator** to setup and locally use this application.
* `PostgreSQL 12.6` is **required** to manage this application's database ([how to install PostgreSQL 12.6](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-postgres)).
* You **must** have `Ruby 2.6.5` installed to be able to launch this application ([how to install Ruby 2.6.5](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby)).

---

## Setup/Installation

* To clone this directory, navigate in your terminal to the desired location of the project and run command `git clone https://github.com/MicahOlson/cookbook.git`
* Navigate to top level of the directory with command `cd cookbook`
* To install bundler for managing gems run command `gem install bundler`
* To install gems into the project run command `bundle install`
* To use Visual Studio Code to edit this project, follow install instructions [here](https://code.visualstudio.com/).
* To enable command `code`, open VS Code, click on View > Command Palette, type in "shell command", and click on "Shell Command: Install 'code' command in PATH"
* Now, from your terminal, in the project's top level directory, you can run command `code .` to open project in VS Code.
* Launch PostgreSQL to run a persistent database management server `postgres`
* To recreate database, in the root directory of the project run command `rake db:setup`
* To run tests using rspec, run command `rspec`
* To run a live server, from the root level of the project directory in your terminal, run command `rails server`
* To interact with application, navigate to http://localhost:3000/ in a web browser.
* Exit live server, press Ctrl+C in your terminal

---

## License

[MIT](LICENSE.txt)

---

## Contact Information

* _Contact Micah via [Email](mailto:micah.olson@protonmail.com) or [LinkedIn](https://www.linkedin.com/in/micah-lewis-olson/), or check out his [Github](https://github.com/MicahOlson)._  
* _Contact Geof via [Email](mailto:geof.rosenmunds.eamil@gmail.com) or [LinkedIn](https://www.linkedin.com/in/geofrosenmund/), or check out his [Github](https://github.com/crankyjones)._