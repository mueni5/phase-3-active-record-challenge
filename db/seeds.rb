# Make 50 products
50.times do
  # create a product with random data
  product = Product.create(
    name: Faker::Commerce.product_name,  # Update attribute name here
    description: Faker::Lorem.sentence,
    price: rand(0..60) # random number between 0 and 60
  )
  
  # create between 1 and 5 reviews for each product
  rand(1..5).times do
    # get a random user for every review
    user = User.order('RANDOM()').first

    # A review belongs to a product and a user, so we must provide those foreign keys
    Review.create(
      comment: Faker::Lorem.sentence,
      star_rating: rand(1..10),
      product_id: product.id,
      user_id: user.id
    )
  end
end
