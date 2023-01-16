# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
david = User.create!(name: 'John Doe', email: 'johndoe@test.com', password: '123123')

article1 = Article.create!(name: 'In the Name of the Father', user: david)
article2 = Article.create!(name: 'Saving Private Ryan the alien', user: david)
article3 = Article.create!(name: 'Sometimes i like it hot all day', user: david)
article4 = Article.create!(name: 'Star Wars: Episode IV – A New Hope', user: david)
article5 = Article.create!(name: 'Hacksaw Ridge - The Samurai', user: david)
article6 = Article.create!(name: 'The Dark Knight Rises', user: david)
article7 = Article.create!(name: 'The Lord of the Rings: The Return of the King', user: david)
article8 = Article.create!(name: 'The Grapes of Wrath the advenger', user: david)
article9 = Article.create!(name: 'The Treasure of the Sierra Madre', user: david)
article10 = Article.create!(name: 'The Bridge on the River Kwai', user: david)
