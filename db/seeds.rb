# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(first_name: 'Debbie', last_name: 'Milburn', email: 'debbiemilburn2@gmail.com', password: 'testing', password_confirmation: 'testing' )
show = Show.create(title: 'show')
competition = Competition.create(title: 'Title', organizer_id: 1, show_id: 1)
rule = Rule.create(content: "rule content", competition_id: 1)
bracket = Bracket.create(user_id: 1, competition_id: 1)
