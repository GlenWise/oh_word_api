# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "user1", nickname: "rapper1", password: "glen")

Song.create(title: "Straight Outta Compton", artist: "N.W.A.", lyrics: "Straight outta _LOCATION_, crazy _OCCUPATION_ named _PERSON_IN_ROOM_
From the _NOUN_ called _PLURAL_NOUN_ With _PLURAL_NOUN_ 
When I'm called off, I got a sawed off 
_VERB_ the _NOUN_, and _PLURAL_NOUN_ are hauled off
You too, boy, if ya _VERB_ with me
The _PLURAL_NOUN_ are gonna hafta come and get me")

Game.create(user_id: 1, song_id: 1)


Word.create(description: "Place", index: 2, song_id: 1)
Word.create(description: "Occupation", index: 4, song_id: 1)
Word.create(description: "Person in room", index: 6, song_id: 1)

GameWord.create(game_id: 1, word_id: 1, text: "Compton")