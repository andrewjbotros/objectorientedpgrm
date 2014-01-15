# Basic sales tax is applicable at a rate of 10% on all goods, except books, food, and medical products that are exempt. 
#Import duty is an additional sales tax applicable on all imported goods at a rate of 5%, with no exemptions.

#When I purchase items I receive a receipt which lists the name of all the items and their price (including tax), finishing with the total 
#cost of the items, and the total amounts of sales taxes paid. 

#The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains (np/100 rounded up to the nearest 0.05) amount of sales tax.
#Write an application that prints out the receipt details for these shopping baskets...

#create 3 baskets of goodies
basket1 = {}
basket2 = {}
basket3 = {}

basket1["book"] = ["exempt", 12.49]
basket1["music CD"] = ["sales", 14.99]
basket1["chocolate bar"] = ["exempt", 0.85]
items["imported box of chocolates"] = ["import", 10.00]
items["imported bottle of perfume"] = ["import", 47.50]
items["perfume2"] = ["import", 27.99]
items["perfume3"] = ["sales", 18.99]
items["headachePills"] = ["exempt", 9.75]
items["chocolates2"] = ["import", 11.25]

#assign 3 baskets with goods
basket1 = [items[:book], items[:musicCD], items[:chocolateBar]]
basket2 = [items[:chocolates], items[:perfume]]
basket3 = [items[:perfume2], items[:perfume3], items[:headachePills], items[:chocolates2]]
#check to see what happens
# puts basket1
# puts basket2
# puts basket3

def display (basket)
	basket.each do |key, value|
    puts "#{key}: #{value}"
	end
end

display(basket1)
#puts items[:book]

