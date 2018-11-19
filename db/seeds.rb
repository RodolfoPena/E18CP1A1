# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Product.destroy_all

10.times do |i|
  User.create(
    email: "user#{i}@mail.com",
    password: '112233')
end

10.times do |i|
  Product.create(
    name: "Product #{i}",
    content: "The Product#{i} is very useful",
    price: '112233')
end
