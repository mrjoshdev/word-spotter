# WordSpotter Readme

WordSpotter is an application that allows users to enter a random string into a search field and then see which words from the Simple Dictionary are contained in that string.

### Assumptions

While building this application I assume that the Simple Dictionary won't be updated, and the Nouns, Verbs and Articles provided are the complete Simple dictionary.

### Installation

Copy the project file to a folder then open it from the terminal

* Ruby version '2.4.5'

run `bundle install` & `yarn install` from the terminal

* Database creation

There is seed data that is necessary to run this program because it contains the Simple Dictionary. please copy and paste the following into your terminal and run it `bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed`

Run `rails server` from the terminal and then open `localhost:3000` in your browser

### Tests

To run tests enter `rspec` in the terminal
