# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users_seeds = [
  {email: "google@gmail.com", password: "123456"},
  {email: "user2@gmail.com", password: "123456"}
]

users_seeds.each do |u|
User.create(u)
end

searches_seeds = [
  {name: "abcd", user_id: 1},
  {name: "ac", user_id: 1}
]

searches_seeds.each do |e|
Search.create(e)
end

words_seeds = [
{spelling: "abcd", category: "noun"},
{spelling: "c", category: "noun"},
{spelling: "def", category: "noun"},
{spelling: "h", category: "noun"},
{spelling: "ij", category: "noun"},
{spelling: "cde", category: "noun"},
{spelling: "bc", category: "verb"},
{spelling: "fg", category: "verb"},
{spelling: "g", category: "verb"},
{spelling: "hij", category: "verb"},
{spelling: "bcd", category: "verb"},
{spelling: "a", category: "article"},
{spelling: "ac", category: "article"},
{spelling: "e", category: "article"}
]
words_seeds.each do |seed|
Word.create(seed)
end
