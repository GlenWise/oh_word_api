# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 
# User.create(username: "user1", nickname: "rapper1", password: "glen")
# 

#Does this work?

Song.create(title: "Allstar", artist: "Smash Mouth", lyrics:
"_PERSON_IN_ROOM_ once told me the _NOUN_ is gonna _VERB_ me 
I aint the _ADJECTIVE_ _NOUN_ in the shed 
She was looking kind of dumb with her _BODY_PART_ and her thumb 
In the shape of a _NOUN_ on her forehead 
Well the _NOUN_ start _VERB_ENDING_IN_ING_ and they dont stop _VERB_ENDING_IN_ING_ 
Fed to the _PL_NOUN_ and I hit the _NOUN_ _VERB_ENDING_IN_ING_ 
Didnt make _PL_NOUN_ not to _VERB_ for fun 
Your _NOUN_ gets _ADJECTIVE_ but your _NOUN_ gets dumb")

Word.create(description: "Person in room", index: 0, song_id: 1)
Word.create(description: "Noun", index: 5, song_id: 1)
Word.create(description: "Verb", index: 8, song_id: 1)
Word.create(description: "Adjective", index: 13, song_id: 1)
Word.create(description: "Noun", index: 14, song_id: 1)
Word.create(description: "Body Part", index: 26, song_id: 1)
Word.create(description: "Noun", index: 35, song_id: 1)
Word.create(description: "Noun", index: 41, song_id: 1)
Word.create(description: "Verb ending in -ing", index: 43, song_id: 1)
Word.create(description: "Verb ending in -ing", index: 48, song_id: 1)
Word.create(description: "Plural Noun", index: 52, song_id: 1)
Word.create(description: "Noun", index: 57, song_id: 1)
Word.create(description: "Verb ending in -ing", index: 58, song_id: 1)
Word.create(description: "Plural Noun", index: 61, song_id: 1)
Word.create(description: "Verb", index: 64, song_id: 1)
Word.create(description: "Noun", index: 68, song_id: 1)
Word.create(description: "Adjective", index: 70, song_id: 1)
Word.create(description: "Noun", index: 73, song_id: 1)
