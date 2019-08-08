Gossip.destroy_all
User.destroy_all
City.destroy_all

20.times do
  c = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, description: Faker::Quote.yoda,email: Faker::Internet.email,age: rand(8..99), password_digest: 'password')
g = Gossip.create(title: Faker::Currency.name,content:  Faker::Quote.yoda, user: c )
g = Gossip.create(title: Faker::Currency.name,content:  Faker::Quote.yoda, user: c )
ct = City.create(name: Faker::Currency.name)
end
