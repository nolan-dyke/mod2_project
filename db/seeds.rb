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

meetup = Group.create(name: 'Meetup Accountability', description:'yes its 5:30 and youve been working since 9, but you really should go to the meetup')
writing_pals = Group.create(name: 'Writing Pals', description:'Everyday we write 300 words about....')
workout_buddies = Group.create(name: 'Workout Buddies', description:"By the end of this, it'll be, '20 pushups? No problem.'")

joiner1 = Joiner.create(user: nolan, group: meetup)
joiner2 = Joiner.create(user: lydia, group: meetup)
joiner3 = Joiner.create(user: lydia, group: writing_pals)
joiner4 = Joiner.create(user: nolan, group: writing_pals)
joiner5 = Joiner.create(user: lydia, group: workout_buddies)

content1 = Content.create(message: 'find 3 meetups and mark your calendar with their date and time', user: nolan, group: meetup)
content2 = Content.create(message: 'first prompt: A love letter to Coco', user: nolan, group: writing_pals)
content3 = Content.create(message: '(60 jumping jacks, 40 situps, and 10 pushups) x2', user: lydia, group: workout_buddies)

thought1 = Thought.create(comment: 'Great idea, Nolan', content: content1, user: lydia)
thought2 = Thought.create(comment: 'But I only met her yesterday', content: content2, user: lydia)
thought3 = Thought.create(comment: "let's triple it", content: content3, user: nolan)