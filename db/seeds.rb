# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'admin', email: 'admin@admin.com', password: 'heyhey',
                        password_confirmation: 'heyhey', level: 0)

#populate with temporary fake poobr postings

Posting.create(title: '1', address: '550 west hastings st, vancouver bc',
                description: '111111', infant: true, handicap: true,
                shower: true)

Posting.create(title: '2', address: '6051 yew st, vancouver bc',
                description: '222222', infant: true, handicap: true,
                shower: true)

Posting.create(title: '3', address: '445 sw marine dr, vancouver bc',
                description: '333333', infant: true, handicap: true,
                shower: true)

Posting.create(title: '3', address: '150 west broadway, vancouver bc',
                description: '444444', infant: true, handicap: true,
                shower: true)

Posting.create(title: '3', address: '2000 main st, vancouver bc',
                description: '555555', infant: true, handicap: true,
                shower: true)

Posting.create(title: '3', address: '3000 nanimo st, vancouver bc',
                description: '666666', infant: true, handicap: true,
                shower: true);

Posting.create(title: '3', address: '2096 kingsway st, vancouver bc',
                description: '777777', infant: true, handicap: true,
                shower: true)
