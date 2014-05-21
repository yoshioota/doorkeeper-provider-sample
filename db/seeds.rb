# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Article.delete_all

20.times do |idx|
  user = User.create! \
    email: "provider#{idx}@example.com",
    password: "provider#{idx}",
    password_confirmation: "provider#{idx}"

  10.times do |article_index|
    Article.create \
      user: user,
      title: "title #{user.email} - #{article_index}",
      body: "body #{user.email} - #{article_index}"
  end
end
