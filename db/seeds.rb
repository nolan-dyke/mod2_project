# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Joiner.destroy_all
Thought.destroy_all
Content.destroy_all
User.destroy_all
Group.destroy_all

nolan = User.create(name: "Nolan")
lydia = User.create(name: "Lydia")

meetup = Group.create(name: 'Go to meetups', description:'where we convince each other to go to at least one meetup while at Flatiron school',)

joiner1 = Joiner.create(user: nolan, group: meetup)
joiner2 = Joiner.create(user: lydia, group: meetup)

content1 = Content.create(message: 'we love meetups', user: nolan, group: meetup)

thought1 = Thought.create(comment: 'Great idea, Nolan', content: content1, user: lydia)