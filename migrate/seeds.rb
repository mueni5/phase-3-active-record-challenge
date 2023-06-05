puts "🌱 Seeding data..."

# run a loop 50 times
50.times do
  # create a product with random data
  Product = Product.create(
    title: Faker::Product.title,
    genre: Faker::Product.genre,
    platform: Faker::Product.platform,
    price: rand(0..60) # random number between 0 and 60
  )

  # create between 1 and 5 reviews for each product
  rand(1..5).times do
    Review.create(
      score: rand(1..10),
      comment: Faker::Lorem.sentence,
      Product_id: Product.id # use the ID (primary key) of the product as the foreign key
    )
  end
end

puts "🌱 Done seeding!"