# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.create! subdomain: "blog1"
Blog.create! subdomain: "blog2"


Blog.each do |b|
  b.posts.create! title: "post1: #{b.subdomain}"
  b.posts.create! title: "post2: #{b.subdomain}"
end
