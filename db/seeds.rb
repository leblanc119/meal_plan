# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Tag.destroy_all
Plan.destroy_all
MealTag.destroy_all
Mealtime.destroy_all
Favorite.destroy_all
Meal.destroy_all
Mealplan.destroy_all

#Users
u1 = User.new
u1.email = "l@l.com"
u1.password = "12341234"
u1.first_name = "Leanne"
u1.username = "leanne"
u1.save

u2 = User.new
u2.email = "a@a.com"
u2.password = "12341234"
u2.first_name = "Alice"
u2.username = "alice"
u2.save

u3 = User.new
u3.email = "m@m.com"
u3.password = "12341234"
u3.first_name = "Mark"
u3.username = "mark"
u3.save

puts "#{User.count} users in the database"

#Tag
t1 = Tag.new
t1.name = "breakfast"
t1.save

t2 = Tag.new
t2.name = "snack"
t2.save

t3 = Tag.new
t3.name = "lunch"
t3.save

t4 = Tag.new
t4.name = "dinner"
t4.save

t5 = Tag.new
t5.name = "chicken"
t5.save

t6 = Tag.new
t6.name = "dessert"
t6.save

t7 = Tag.new
t7.name = "fish"
t7.save

t8 = Tag.new
t8.name = "turkey"
t8.save

t9 = Tag.new
t9.name = "salad"
t9.save

t10 = Tag.new
t10.name = "vegetarian"
t10.save

t11 = Tag.new
t11.name = "side"
t11.save

puts "#{Tag.count} tags in the database"

m1 = Meal.new
m1.name = "Chicken Piccata"
m1.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m1.user = u1
m1.save

m2 = Meal.new
m2.name = "Chocolate Overnight Oats"
m2.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m2.user = u1
m2.save

m3 = Meal.new
m3.name = "Buffalo Chicken Meatballs"
m3.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m3.user = u2
m3.save

m4 = Meal.new
m4.name = "Zoodles with Turkey"
m4.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m4.user = u1
m4.save

m5 = Meal.new
m5.name = "Almond Crusted Chicken with Cherry Tomatoes"
m5.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m5.user = u2
m5.save

m6 = Meal.new
m6.name = "Ham and Swiss Omelette"
m6.image = "http://cdn-img.health.com/sites/default/files/styles/2000x2000/public/styles/main/public/sb10066792a-001.jpg?itok=MadjifYD"
m6.user = u2
m6.save

puts "#{Meal.count} meals in the database"

mt1 = MealTag.new
mt1.meal = m1
mt1.tag = t5
mt1.save

mt2 = MealTag.new
mt2.meal = m1
mt2.tag = t4
mt2.save

puts "#{MealTag.count} mealtags in the database"
