# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'admin', email: 'admin@admin.com', password: 'heyhey',
                        password_confirmation: 'heyhey', level: 0, email_confirmed:true, confirm_token:nil,
                        funds: 10000)
User.create(name: 'alex', email: 'alex@sfu.ca', password: 'heyhey',
                        password_confirmation: 'heyhey', level: 1, email_confirmed:true, confirm_token:nil,
                        funds: 0)
User.create(name: 'alex', email: 'mike@sfu.ca', password: 'heyhey',
                        password_confirmation: 'heyhey', level: 1, email_confirmed:true, confirm_token:nil,
                        funds: 500)

#populate with temporary fake poobr postings

Posting.create(title: 'Vancouver 1', address: '2225 W 41st Ave, Vancouver BC', description: 'Small Pleasant Bathroom', infant: false, handicap: false, shower: true, userid:1, price:2)
Posting.create(title: 'Vancouver 2', address: '5702 Granville St, Vancouver BC', description: 'Bathroom', infant: true, handicap: true, shower: false, userid:1, price:3)
Posting.create(title: 'Vancouver 3', address: '6525 Oak St, Vancouver BC', description: 'Small Pleasant Bathroom', infant: false, handicap: true, shower: true, userid:1, price:4)
Posting.create(title: 'Vancouver 4', address: '3205 Arbutus St, Vancouver BC', description: 'Bathroom', infant: true, handicap: false, shower: true, userid:1, price:5)
Posting.create(title: 'Vancouver 5', address: '4500 Oak St, Vancouver BC', description: 'Nice Large Shower and Bathroom', infant: false, handicap: true, shower: true, userid:1, price:2)
Posting.create(title: 'Vancouver 6', address: '3463 Dunbar St, Vancouver BC', description: 'Bathroom', infant: true, handicap: true, shower: false, userid:1, price:3)
Posting.create(title: 'Vancouver 7', address: '650 W 41st Ave, Vancouver BC', description: 'Bathroom', infant: false, handicap: false, shower: true, userid:1, price:4)
Posting.create(title: 'Vancouver 8', address: '3102 W Broadway, Vancouver BC', description: 'Small Pleasant Bathroom', infant: true, handicap: true, shower: true, userid:1, price:5)
Posting.create(title: 'Vancouver 9', address: '1595 W Broadway, Vancouver BC', description: 'Nice Large Shower and Bathroom', infant: false, handicap: false, shower: true, userid:1, price:2)
Posting.create(title: 'Vancouver 10', address: '1398 W Broadway, Vancouver BC', description: 'Bathroom', infant: true, handicap: false, shower: true, userid:1, price:3)
Posting.create(title: 'Vancouver 11', address: '1790 W 4th Ave, Vancouver BC', description: 'Bathroom', infant: false, handicap: true, shower: false, userid:1, price:4)
#Posting.create(title: 'Vancouver 12', address: '865 W Broadway, Vancouver BC', description: 'Free', infant: true, handicap: true, shower: true, userid:1, price:0)
#Posting.create(title: 'Vancouver 13', address: '4401 W 10th Ave, Vancouver BC', description: 'Nice Large Shower and Bathroom', infant: false, handicap: false, shower: true, userid:1, price:5)
Posting.create(title: 'Vancouver 14', address: '463 Robson St, Vancouver BC', description: 'Bathroom', infant: true, handicap: true, shower: true, userid:2, price:5)
Posting.create(title: 'Vancouver 15', address: '678 Dunsmuir St, Vancouver BC', description: 'Bathroom', infant: false, handicap: true, shower: true, userid:2, price:5)
#Posting.create(title: 'Vancouver 16', address: '104-750 W Pender St, Vancouver BC', description: 'Small Pleasant Bathroom', infant: true, handicap: true, shower: true, userid:1, price:5)
Posting.create(title: 'Vancouver 17', address: '650 W Georgia St, Vancouver BC', description: 'Free', infant: false, handicap: false, shower: true, userid:2, price:0)
Posting.create(title: 'Vancouver 18', address: '555 W Hastings St, Vancouver BC', description: 'Bathroom', infant: true, handicap: true, shower: true, userid:2, price:5)
#Posting.create(title: 'Vancouver 19', address: '998 Granville St Vancouver BC', description: 'Nice Large Shower and Bathroom', infant: false, handicap: true, shower: false, userid:1, price:5)
Posting.create(title: 'Vancouver 20', address: '756 Davie St, Vancouver BC', description: 'Small Pleasant Bathroom', infant: true, handicap: true, shower: true, userid:2, price:5)
#Posting.create(title: 'Vancouver 21', address: '947 Hornby St, Vancouver BC', description: 'Free', infant: false, handicap: true, shower: true, userid:1, price:0)
Posting.create(title: 'Vancouver 22', address: '200 Burrard St, Vancouver BC', description: 'Nice Large Shower and Bathroom', infant: true, handicap: false, shower: false, userid:2, price:5)
#Posting.create(title: 'Vancouver 23', address: '108 W Pender St, Vancouver BC', description: 'Small Pleasant Bathroom', infant: false, handicap: true, shower: true, userid:1, price:5)
Posting.create(title: 'Vancouver 24', address: '1205 Burrard St, Vancouver BC', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)

Posting.create(title: 'Calgary 1', address: '444 5 Ave SW #101, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
#Posting.create(title: 'Calgary 2', address: '1820 Uxbridge Dr NW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
#Posting.create(title: 'Calgary 3', address: '3840 Macleod Trail, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
#Posting.create(title: 'Calgary 4', address: '401 9 Ave SW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
#Posting.create(title: 'Calgary 5', address: '1201 1 St SE, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
#Posting.create(title: 'Calgary 6', address: '665 8 St SW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
#Posting.create(title: 'Calgary 7', address: '614 6 Ave SW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
#Posting.create(title: 'Calgary 8', address: '410 10 St NW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
#Posting.create(title: 'Calgary 9', address: '520 3 Ave SW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
Posting.create(title: 'Calgary 10', address: '4015 Centre Street Northwest, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
Posting.create(title: 'Calgary 11', address: '407 2 St SW #101&102, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
Posting.create(title: 'Calgary 12', address: '240 16 Ave NE, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
Posting.create(title: 'Calgary 13', address: '1211 12 Ave SW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
Posting.create(title: 'Calgary 14', address: '1103 17 Ave SW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
Posting.create(title: 'Calgary 15', address: '225 7 Ave SW, Calgary AB', description: 'Free', infant: true, handicap: true, shower: false, userid:1, price:0)
