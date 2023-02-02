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

Home Page": !["Home Page"](https://github.com/biancafu/jungle/blob/master/docs/home_page1.png) <br>
Home Page Product Section": !["Home Page Product"](https://github.com/biancafu/jungle/blob/master/docs/home_page2.png) <br>
Product Details Page: !["Product Details"](https://github.com/biancafu/jungle/blob/master/docs/product_detail_page.png) <br>
Cart Details Page: !["Cart Details"](https://github.com/biancafu/jungle/blob/master/docs/cart_details.png) <br>
Credential Form For Purchase: !["Credential"](https://github.com/biancafu/jungle/blob/master/docs/credential.png) <br>
Order Summary: !["Order Summary"](https://github.com/biancafu/jungle/blob/master/docs/order_summary.png) <br>
Sign Up Page: !["Sign Up"](https://github.com/biancafu/jungle/blob/master/docs/sign_up.png) <br>
Log in Page: !["Login"](https://github.com/biancafu/jungle/blob/master/docs/login.png) <br>
