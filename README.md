# LeagueSide Coding Challenge
##### Requirements
Build a simple league sponsorship web service that does the following:

    1. Add a league to the system
    2. Find leagues to sponsor
        - have a latitude/longitude pair around which to focus the search.
        - have a radius in miles in which to search around that central point
        - provide a total budget to spend on leagues to filter by
    Test: Be able to provide data on as many leagues to sponsor within a radius, with a given price, without going over the budget.

#### Tech Stack
ruby 2.4.0
rails 5.1.5

#### Clone the project
```bash
  git clone https://github.com/Seaanna/leagueside_seaanna.git
```
#### Install dependencies
```bash
  bundle
```
#### Load Database
```bash
 rake db:create
 rake db:migrate
 rake db:seed
```
#### Start the server
```bash
  rails s
```
#### Run Tests
```bash
 bin/rails test
```
###### Code Challenge Evaluation
I thought this was a fun challenge. I had used the [geocoder gem](https://github.com/alexreisner/geocoder) in the past and this helped with handing longitude, latitude, and radius. After completing the functionality, I added styles to update the default forms, tables, and error messages to look more presentable.
I could have spent more time adding media queries and updating the layout. I wanted to put this up on Heroku but my operating system is a little older and was proving to take a lot longer to get up and running. I kept the tests simple and I could have used rspec.

###### Last Thoughts
I used the [current location](https://stackoverflow.com/questions/17540482/find-latitude-and-longitude-of-current-location) for the latitude and longitude search fields so I would not need to continue to copy and paste to test the search. Adding a county/city/current location scope to select from would be a cool idea. To extend the challenge further, you could add sponsors as a model and use `has_many through` to match sponsors to leagues in a join table `league_sponsors`.