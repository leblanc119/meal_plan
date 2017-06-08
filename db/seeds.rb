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
m1.image = "http://food.fnr.sndimg.com/content/dam/images/food/fullset/2009/6/11/0/EI1A09_22307_s4x3.jpg.rend.hgtvcom.616.462.jpeg"
m1.link="http://www.foodnetwork.com/recipes/giada-de-laurentiis/chicken-piccata-recipe2-1913809"
m1.user = u1
m1.save

m2 = Meal.new
m2.name = "Chocolate Overnight Oats"
m2.image = "http://kirbiecravings.com/wp-content/uploads/2017/03/overnight-chocolate-oats.jpg"
m2.user = u1
m2.link="http://kirbiecravings.com/2017/03/chocolate-overnight-oats.html"
m2.save

m3 = Meal.new
m3.name = "Mini Buffalo Chicken Meatballs"
m3.image = "http://assets.epicurious.com/photos/54b28a26a801766f773f92d3/6:4/w_620%2Ch_413/369170_buffalo-chicken_1x1.jpg"
m3.user = u2
m3.link="http://www.epicurious.com/recipes/food/views/mini-buffalo-chicken-balls-369170"
m3.save

m4 = Meal.new
m4.name = "Zoodles with Turkey Meat Sauce"
m4.image = "http://cf.classyclutter.net/wp-content/uploads/2015/08/Zoodles-and-Meat-Sauce.jpg"
m4.user = u1
m4.link="http://www.classyclutter.net/2015/08/healthy-recipes/"
m4.save

m5 = Meal.new
m5.name = "Almond Crusted Chicken Paillards with Cherry Tomatoes"
m5.image = "https://media2.s-nbcnews.com/j/newscms/2016_38/1159208/food-almond-crusted-chicken-paillard-tomato-salad-tease-2-today-160919_80057957412daf0283bcd0203435bd73.today-inline-large2x.jpg"
m5.user = u2
m5.link="http://www.today.com/recipes/almond-crusted-chicken-paillard-tomato-salad-t102964"
m5.save

m6 = Meal.new
m6.name = "Ham and Swiss Omelette"
m6.image = "http://cdn2.tmbi.com/TOH/Images/Photos/37/300x300/Ham-and-Swiss-Omelet_exps90569_Webcard1306_07_2bC_RMS.jpg"
m6.user = u1
m6.link="http://www.tasteofhome.com/recipes/ham-and-swiss-omelet"
m6.save

m7 = Meal.new
m7.name = "Lemon Orzo Chicken Soup"
m7.image = "http://girlandthekitchen.com/wp-content/uploads/2015/05/Panera-Lemon-Chicken-Orzo-Soup-3.jpg"
m7.user = u2
m7.link="http://www.shape.com/recipe/lemony-orzo-chicken-soup"
m7.save

m8 = Meal.new
m8.name = "Blueberry Oat Pancakes"
m8.image = "https://media.self.com/photos/57d88aec50778cef321a4676/4:3/w_752,c_limit/blueberry-oat-pancakes.jpg"
m8.user = u3
m8.link="http://www.self.com/story/cook-up-these-fluffy-and-healthy-blueberry-oat-pancakes"
m8.save

m9 = Meal.new
m9.name = "Sausage and Pepper Bake"
m9.image = "http://www.womenshealthmag.com/sites/womenshealthmag.com/files/styles/slideshow-desktop/public/silver-platters-christopher-testani-sausage-peppers.jpg?itok=pv75ZfEl"
m9.user = u2
m9.link="http://www.womenshealthmag.com/food/sheet-pan-dinner-recipe/slide/5"
m9.save

m10 = Meal.new
m10.name = "Chocolate Lace Cookies with Sunflower Seeds"
m10.image = "https://content.feastkitchen.com/media/00000003373.jpg"
m10.user = u3
m10.link="http://www.shape.com/recipe/chocolate-lace-cookies-with-sunflower-seeds-and-oats"
m10.save

m11 = Meal.new
m11.name = "Protein Peanut Butter Energy Bites"
m11.image = "http://www.ambitiouskitchen.com/wp-content/uploads/2016/02/FebruaryPhotos-18.jpg"
m11.user = u3
m11.link="http://www.ambitiouskitchen.com/2016/02/protein-peanut-butter-energy-bites/"
m11.save

Meal.create(name: 'Tangy BBQ Chicken', image:"http://food.fnr.sndimg.com/content/dam/images/food/fullset/2009/4/14/2/FNM060109WhatsYourMeat010b_4_s4x3.jpg.rend.hgtvcom.616.462.jpeg", link: "http://www.foodnetwork.com/recipes/food-network-kitchen/tangy-barbecue-chicken-recipe-2103841", user: u1)

Meal.create(name: 'Filet Mignon with Sherry Mushroom Sauce', image:"http://cdn-image.myrecipes.com/sites/default/files/image/recipes/ck/filet-mignon-ck-1591119-x.jpg", link: "http://www.myrecipes.com/recipe/filet-mignon-with-sherry-mushroom-sauce", user: u1)

Meal.create(name: 'Pistachio Biscotti Cookies', image:"http://cdn-img.instyle.com/sites/default/files/styles/684xflex/public/images/2014/WRN/042114-moms-biscotti-594.jpg?itok=awRZQYYK", link: "http://www.instyle.com/news/made-love-bake-these-pistachio-biscotti-cookies-mom", user: u2)

Meal.create(name: 'Whole Wheat Pumpkin Chocolate Chip Muffins', image:"http://www.ambitiouskitchen.com/wp-content/uploads/2014/10/5-IMG_5779.jpg", link: "http://www.ambitiouskitchen.com/2014/10/whole-wheat-pumpkin-chocolate-chip-muffins/", user: u3)

Meal.create(name: 'Orange-Ginger Chicken and Veggie Bowl', image:"https://media.self.com/photos/58af421cc7d5402e31c66295/4:3/w_746,c_limit/orange-ginger-chicken-veggie-bowl-fore296.jpg", link: "http://www.self.com/recipe/orange-ginger-chicken-veggie-bowl", user: u3)

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

mtime1 = Mealtime.new
mtime1.time = "Breakfast"
mtime1.save

mtime2 = Mealtime.new
mtime2.time = "Lunch"
mtime2.save

mtime3 = Mealtime.new
mtime3.time = "Dinner"
mtime3.save

mtime4 = Mealtime.new
mtime4.time = "Morning Snack"
mtime4.save

mtime5 = Mealtime.new
mtime5.time = "Afternoon Snack"
mtime5.save

mtime6 = Mealtime.new
mtime6.time = "Evening Snack"
mtime6.save

puts "#{Mealtime.count} mealtimes in the database"
