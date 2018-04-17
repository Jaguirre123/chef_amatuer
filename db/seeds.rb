# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.delete_all

Recipe.create([
    {
        title: "Bacon ipsum dolor",
        category: "jfnskdjf", 
        content: "Prosciutto ham hock spare ribs beef ribs boudin, buffalo short ribs. Turkey cupim drumstick boudin kevin corned beef.",
        user: User.first
    }, 
    {
        title: "Cupim sausage t-bone",
        category: "jfnskdjf", 
        content: "ball tip jowl frankfurter strip steak landjaeger bresaola fatback ground round pancetta." ,
    }, 
    {
        title: "Chuck bacon kevin, ground round",
        category: "jfnskdjf",
        content: "cupim ribeye alcatra pork chop shoulder salami chicken short ribs corned beef beef ribs jerky.",
    }
])

puts "it wrks"