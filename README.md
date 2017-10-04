Palindrome Database Tech Test
=================

## Prerequisites

Postgresql development package

Macs OSX (with home brew)
  
    brew install postgresql
    
Linux

    yum install postgresql-devel
    
Windows

    nope, sorry ¯\_(ツ)_/¯

## Specifications

Build a service that stores a number of palindromes. A palindrome is a word or phrase string that reads the same backwards as forwards, independent of spaces and punctuation. An example could be 'Dammit I'm Mad'. The service has a simple REST interface that presents two endpoints:

- An endpoint that accepts a string parameter, that will return true if the string is palindrome (and false otherwise).

- An endpoint that returns a list of the last 10 palindromes the system has received in the last 10 minutes.


## Approach

The project was written in Ruby on Rails following a TDD approach. This was a fun project that consolidated some of my rails knowledge. With more time I would like to work on extending this project to add user authentication so that users can read,  update and delete their palindromes when logged in. A more exciting front-end built using a library like react.js, would also improve this web app.  

## How to use
First clone this repo. Then:
```
bundle install
# assuming your postgres instance is running
bin/rails db:create
bin/rails db:migrate

bundle exec rspec # Run the tests to ensure it works
bin/rails server # Start the server at localhost:3000
```
## Screenshots
Palindrome successfully saved in database:

![screen shot 2017-10-01 at 18 53 56](https://user-images.githubusercontent.com/25139253/31057457-ebfff5c2-a6da-11e7-842c-6506061a2f0d.png)

Error when user tries to add string that is not a palindrome:

![screen shot 2017-10-01 at 18 55 07](https://user-images.githubusercontent.com/25139253/31057462-152d20dc-a6db-11e7-8e30-4513bd1466e5.png)

Passing rspec tests:

![screen shot 2017-10-01 at 18 56 53](https://user-images.githubusercontent.com/25139253/31057476-4db0184c-a6db-11e7-9378-ddd89e66b839.png)
