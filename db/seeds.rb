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

# Game.create(user_id: 1, song_id: 1)
# Word.create(description: "Place", index: 2, song_id: 1)
# Word.create(description: "Occupation", index: 4, song_id: 1)
# Word.create(description: "Person in room", index: 6, song_id: 1)
# 
# GameWord.create(game_id: 1, word_id: 1, text: "Compton")
Song.create(title: "Straight Outta Compton", artist: "N.W.A.", lyrics: "Straight outta _LOCATION_, crazy _OCCUPATION_ named _PERSON_IN_ROOM_
From the _NOUN_ called _PLURAL_NOUN_ With _PLURAL_NOUN_
When I'm called off, I got a sawed off
_VERB_ the _NOUN_, and _PLURAL_NOUN_ are hauled off
You too, boy, if ya _VERB_ with me
The _PLURAL_NOUN_ are gonna hafta come and get me")

Word.create(description: "Place", index: 2, song_id: 1)
Word.create(description: "Occupation", index: 4, song_id: 1)
Word.create(description: "Person in room", index: 6, song_id: 1)
Word.create(description: "Noun", index: 9, song_id: 1)
Word.create(description: "Plural Noun", index: 11, song_id: 1)
Word.create(description: "Plural Noun", index: 13, song_id: 1)
Word.create(description: "Verb", index: 20, song_id: 1)
Word.create(description: "Noun", index: 22, song_id: 1)
Word.create(description: "Plural Noun", index: 24, song_id: 1)
Word.create(description: "Verb", index: 33, song_id: 1)
Word.create(description: "Plural Noun", index: 37, song_id: 1)

Song.create(title: "Just a Friend", artist: "Biz Markie", lyrics: 
"_PERSON_IN_ROOM_, you got what I need 
but you say he's just a _NOUN_
But you say he's just a _NOUN_
Have you ever _VERB_PAST_TENSE_ a _NOUN_ that you tried to date
But a year _INFINITIVE_VERB_ _NOUN_ _PERSON_ wanted you to wait
Let me tell ya a story of my situation
I was _VERB_ENDING_IN_ING_ to this _NOUN_ from the _COUNTRY_ nation")

Word.create(description: "Place", index: 2, song_id: 2)
Word.create(description: "Occupation", index: 4, song_id: 2)
Word.create(description: "Person in room", index: 6, song_id: 2)
Word.create(description: "Noun", index: 9, song_id: 2)
Word.create(description: "Plural Noun", index: 11, song_id: 2)
Word.create(description: "Plural Noun", index: 13, song_id: 2)
Word.create(description: "Verb", index: 20, song_id: 2)
Word.create(description: "Noun", index: 22, song_id: 2)
Word.create(description: "Plural Noun", index: 24, song_id: 2)
Word.create(description: "Verb", index: 33, song_id: 2)
Word.create(description: "Plural Noun", index: 37, song_id: 2)

Song.create(title: "Allstar", artist: "Smash Mouth", lyrics:
"_PERSON_IN_ROOM_ once told me the _NOUN_ is gonna _VERB_ me
I aint the _ADJECTIVE_ _NOUN_ in _PLACE_
She was _VERB_ENDING_IN_ING_ kind of dumb with her _BODY_PART_ and her thumb
In the shape of a _NOUN_ on her forehead
Well the _NOUN_ start _VERB_ENDING_IN_ING_ and _PLURAL_PEOPLE_ dont stop _VERB_ENDING_IN_ING_
Fed to the _PL_NOUN_ and I hit the _NOUN_ _VERB_ENDING_IN_ING_
Didnt make _PL_NOUN_ not to _VERB_ for fun
Your _NOUN_ gets _ADJECTIVE_ but your _NOUN_ gets dumb")

Word.create(description: "Person in room", index: 0, song_id: 3)
Word.create(description: "Noun", index: 5, song_id: 3)
Word.create(description: "Verb", index: 8, song_id: 3)
Word.create(description: "Adjective", index: 13, song_id: 3)
Word.create(description: "Noun", index: 14, song_id: 3)
Word.create(description: "Place", index: 16, song_id: 3)
Word.create(description: "Verb ending in -ing", index: 19, song_id: 3)
Word.create(description: "Body Part", index: 25, song_id: 3)
Word.create(description: "Noun", index: 34, song_id: 3)
Word.create(description: "Noun", index: 40, song_id: 3)
Word.create(description: "Verb ending in -ing", index: 42, song_id: 3)
Word.create(description: "Plural People", index: 44, song_id: 3)
Word.create(description: "Verb ending in -ing", index: 47, song_id: 3)
Word.create(description: "Plural Noun", index: 51, song_id: 3)
Word.create(description: "Noun", index: 56, song_id: 3)
Word.create(description: "Verb ending in -ing", index: 57, song_id: 3)
Word.create(description: "Plural Noun", index: 60, song_id: 3)
Word.create(description: "Verb", index: 63, song_id: 3)
Word.create(description: "Noun", index: 67, song_id: 3)
Word.create(description: "Adjective", index: 69, song_id: 3)
Word.create(description: "Noun", index: 72, song_id: 3)



