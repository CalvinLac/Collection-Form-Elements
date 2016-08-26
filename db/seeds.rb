# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Tag.destroy_all
Tagging.destroy_all


30.times do 
  post = Post.new
  post.title = Faker::Name.name
  post.body = Faker::Lorem.sentence
  post.save
end

30.times do 
  tags = Tag.new
  tags.tagname = Faker::Name.name
  tags.save
end

60.times do
  a = Tagging.new
  a.post_id = Post.all.sample.id
  a.tag_id = Tag.all.sample.id
  a.save
end 