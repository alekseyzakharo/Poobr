# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'admin', email: 'admin@admin.com', password: 'heyhey',
                        password_confirmation: 'heyhey', level: 0, email_confirmed:true, confirm_token:nil)
User.create(name: 'alex', email: 'alex@sfu.ca', password: 'heyhey',
                        password_confirmation: 'heyhey', level: 1, email_confirmed:true, confirm_token:nil,
                        funds: 500)


#populate with temporary fake poobr postings

Posting.create(title: 'Downtown', address: '550 west hastings st, vancouver bc',
                description: 'Bathroom', infant: true, handicap: true,
                shower: true, userid:33)

Posting.create(title: 'Vancouver West', address: '6051 yew st, vancouver bc',
                description: 'Small Bathroom', infant: true, handicap: true,
                shower: true, userid:1)

Posting.create(title: 'Marine Drive', address: '445 sw marine dr, vancouver bc',
                description: 'Come, in anytime', infant: true, handicap: true,
                shower: true, userid:1)

Posting.create(title: 'Broadway Bathroom', address: '150 west broadway, vancouver bc',
                description: 'Large Bathroom, great view', infant: true, handicap: true,
                shower: true, userid:1)

Posting.create(title: 'Eastside Main', address: '2000 main st, vancouver bc',
                description: 'Come in Anytime', infant: true, handicap: true,
                shower: true, userid:1)

Posting.create(title: 'East Vancouver', address: '3000 nanimo st, vancouver bc',
                description: 'Open only saturdays', infant: true, handicap: true,
                shower: true, userid:1)

Posting.create(title: 'Kingsway Bathroom', address: '2096 kingsway st, vancouver bc',
                description: 'Mon-Fri 8am-4pm only', infant: true, handicap: true,
                shower: true, userid:1)
