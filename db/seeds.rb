# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Quote.delete_all

q1 = Quote.create(:quote => "i am the chuck norris of git")
q2 = Quote.create(:quote => "you misspelled my name :(")
q3 = Quote.create(:quote => "in the beginning there was darkness, and then god made the chrome browser, and it was good")
q4 = Quote.create(:quote => "never let your database abstractions leak into your model - it's horrible design.")
q5 = Quote.create(:quote => "sqlite3 is pretty brain dead")
q6 = Quote.create(:quote => "I should invent BSQL (Babysitting SQL) - it will disallow you to delete or modify any data")
q7 = Quote.create(:quote => "that was some hacker shit ")
q8 = Quote.create(:quote => "@chyldmedford why didn't you ever come up with a programming language? @dcoates: He did. He called it C.")
q9 = Quote.create(:quote => "Friends don't let friends IRB")
q10 = Quote.create(:quote => "Code Off! It's like a dance off, except with less coordination and more geeks :)")
