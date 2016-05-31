# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({username: "user1"})
User.create({username: "user2"})
User.create({username: "user3"})
User.create({username: "user4"})
User.create({username: "user5"})

Contact.create({name: "Freddy", email: "why@not.com", user_id: 1})
Contact.create({name: "Teddy", email: "why@yes.com", user_id: 2})
Contact.create({name: "Bobbet", email: "help@me.com", user_id: 3})
Contact.create({name: "Robby", email: "pretty@please.com", user_id: 4})
Contact.create({name: "Moppy", email: "sooo@hot.com", user_id: 5})

ContactShare.create({contact_id: 1, user_id: 2})
ContactShare.create({contact_id: 1, user_id: 3})
ContactShare.create({contact_id: 2, user_id: 4})
ContactShare.create({contact_id: 2, user_id: 5})
