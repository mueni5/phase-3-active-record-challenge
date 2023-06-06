# phase-3-active-record-challenge

Active Record Code Challenge: Product Review

We have three models: User, Review, and Product.

For our purposes, a Product has many Users, a User has many Products’ s, and a Review belongs to a User and to a Product.

Product - User is a many to many relationship.



    A product has many reviews.

    A product has many users, through reviews.

    A review belongs to a product.

    A review belongs to a user.

    A user has many reviews.

    A user has many products, through reviews.


GETTING STARTED.

SET-UP

Clone this repository to your local machine.
cd into the project folder.

Run bundle init. 
      This generates a Gemfile where you add other gems which are not in the file and are necessary for the project.
Run bundle install.
    this generates a gemlile.lock file where all gems are installed.
s
Create migration files for products, users and reviews Run this code to create a migration:

 bundle exec rake db:create_migration NAME=create_user-table
  add the table contents to all the tables created.

  #Review table contains the foreign key.

Run this code to update schema;
      rake db:migrate

Run this code to seed the db;
     rake db:seed

Run this code to Open console;
    bundle exec rake console



Author

This project was created by Christine Mbuvi.

License

This project is open source under the MIT license. See the LICENSE.md file for more information.




