# Jungle

Jungle is a mini e-commerce application built with Rails and Ruby on Rails. 
Jungle enables a user to browse the options that are available in the store whereby they can add and remove items into a cart. 
Users are be able to create account or login at anytime. 

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Cypress

## Screenshots 

Initial display": !["Initial display"](https://github.com/biancafu/scheduler/blob/master/docs/appointment-show.png) <br>
Hover on an appointment, edit/delete button shows up: !["Hover on an appointment, edit/delete button shows up"](https://github.com/biancafu/scheduler/blob/master/docs/appointment-edit%26delete_button.png) <br>
Add/Edit an appointment: !["Add/Edit an appointment"](https://github.com/biancafu/scheduler/blob/master/docs/appointment-form%20(add%26edit).png)
