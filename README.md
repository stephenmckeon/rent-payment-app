# README

## Mission Statement

Using this ruby on rails app, users are able to create and sign into an account from which they can log their gaming sessions, track gaming platforms, track video games, view other gamers' profiles, view recent gaming sessions, and see the latest video game releases.

## Overview

This app uses Ruby 2.5.0p0 and Rails 6.0.3.2. It has 4 models: Gamer, VideoGame, GamingSession, and Platform.

* a GamingSession belongs to a Gamer and a VideoGame; it tracks the start time and end time of the 'session'
* a Gamer has has many GamingSessions through which they have many VideoGames and Platforms; a Gamer also has a name, gamertag, and password
* a VideoGame has many GamingSessions through which they have many Gamers and it belongs to a Platform; a VideoGame also has a name, release date, and genre
* a Platform has many VideoGames and many Gamers through VideoGames; a Platform also has a name, developer, and release date

Each model has appropriate validations to guard against invalid user input.

The app is styled with boostrap v3

## How to run the app

To run this app:
* Fork and clone the repo and navigate to repo in your terminal of choice.
* run `bundle install` and `rake db:migrate` in the terminal
* stat a local server on your machine by running `rails s`
* navigate to localhost:3000 in your browser
* run `rspec` to run the test suite
