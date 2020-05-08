# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Joiner.destroy_all
Thought.destroy_all
State.destroy_all
Content.destroy_all
User.destroy_all
Group.destroy_all

nolan = User.create(name: "Nolan")
lydia = User.create(name: "Lydia")
ahmed = User.create(name: "Ahmed")

professional_development = Group.create(name: 'Professional Developement Group', description:'Network and Learn!')
writing_pals = Group.create(name: 'Writing Pals', description:'Everyday we write 300 words about....')
workout_buddies = Group.create(name: 'Workout Buddies', description:"Stick to a daily workout schedule")
walking =Group.create(name: 'Walking Group', description: 'Go for walks')
bookclub =Group.create(name: 'Book Club', description: 'Read and discuss books')

joiner1 = Joiner.create(user: nolan, group: professional_development)
joiner2 = Joiner.create(user: lydia, group: professional_development)
joiner3 = Joiner.create(user: lydia, group: writing_pals)
joiner4 = Joiner.create(user: nolan, group: writing_pals)
joiner4 = Joiner.create(user: ahmed, group: writing_pals)
joiner5 = Joiner.create(user: lydia, group: walking)
joiner5 = Joiner.create(user: ahmed, group: walking)
joiner5 = Joiner.create(user: ahmed, group: bookclub)
joiner5 = Joiner.create(user: nolan, group: bookclub)

content1 = Content.create(message: 'Go to a Meetup this week', user: nolan, group: professional_development)
content2 = Content.create(message: 'First prompt: Write a love letter to cats', user: nolan, group: writing_pals)
content3 = Content.create(message: 'Take a walk in the rain', user: lydia, group: walking)
content3 = Content.create(message: 'Read Cloud Atlas', user: nolan, group: bookclub)
content3 = Content.create(message: 'Read Goodnight Moon', user: ahmed, group: bookclub)
content4 = Content.create(message: 'Setup a coffee date', user: lydia, group: professional_development)
