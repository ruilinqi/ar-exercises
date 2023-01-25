require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Exercise 1: Create 3 stores
# Use Active Record's create class method multiple times to create 3 stores in the database:
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)
store = Store.create(name: "Burnaby", annual_revenue: 300000, men_apparel: true, women_apparel: true)
store = Store.create(name: "Richmond", annual_revenue: 1260000, men_apparel: false, women_apparel: true)
store = Store.create(name: "Gastown", annual_revenue: 190000, men_apparel: true, women_apparel: false)

# Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.
puts Store.count