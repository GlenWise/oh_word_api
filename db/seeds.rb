# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.create(title: "Straight Outta Compton", artist: "N.W.A.", lyrics: "Straight outta _LOCATION_, crazy _OCCUPATION_ named _PERSON_IN_ROOM_ /n
From the _NOUN_ called _PLURAL_NOUN_ With _PLURAL_NOUN_ /n
When I'm called off, I got a sawed off /n
_VERB_ the _NOUN_, and _PLURAL_NOUN_ are hauled off /n
You too, boy, if ya _VERB_ with me /n
The _PLURAL_NOUN_ are gonna hafta come and get me /n")

Word.create(description: "Place", index: 2, song_id: 1)
Word.create(description: "Occupation", index: 4, song_id: 1)
Word.create(description: "Person in room", index: 6, song_id: 1)