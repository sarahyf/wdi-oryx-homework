# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Journalist.destroy_all
selen = Journalist.create(name: "Selen", age: 32, article_field: "Health")
maria = Journalist.create(name: "Maria", age: 28, article_field: "Sport")
bill = Journalist.create(name: "Bill", age: 40, article_field: "Politics")
james = Journalist.create(name: "James", age: 39, article_field: "")

Article.destroy_all
Article.create(title: "Fastest diet", date: "2018-11-01", journalist_id: selen.id)
Article.create(title: "Baseball and Softball", date: "2018-10-21", journalist_id: maria.id)
Article.create(title: "THE NEW USA", date: "2018-11-11", journalist_id: bill.id)

Field.destroy_all
fields = ["Sport", "Health", "Politics", "General"]

fields.each do |f|
  Field.create(title: f)
end

the_article = Article.create(title: "The most important things ", date: "2018-03-04", journalist_id: james.id)

the_article.fields << Field.find_by(title: "Sport")
the_article.fields << Field.find_by(title: "General")
