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

#populate those baskets with the goodies
basket1["book"] = ["exempt", 12.49, 1]
basket1["music CD"] = ["sales", 14.99, 1]
basket1["chocolate bar"] = ["exempt", 0.85, 1]
basket2["imported box of chocolates"] = ["import", 10.00, 1]
basket2["imported bottle of perfume"] = ["import", 47.50, 1]
basket3["imported bottle of perfume"] = ["import", 27.99, 1]
basket3["bottle of perfume"] = ["sales", 18.99, 1]
basket3["packet of headache pills"] = ["exempt", 9.75, 1]
basket3["box of imported chocolates"] = ["import", 11.25, 1]

#display output as required
def display (basket)
	basket.each do |key, value|
    puts "#{value[2]} #{key} at #{value[1]}"
	end
end

#these methods display item characteristic (tax status, price, number)
def displayTaxStatus (basket)
	basket.each do |key, value|
    puts "#{key}: #{value[0]}"
	end
end

def displayPrice (basket)
	basket.each do |key, value|
    puts "#{key}: #{value[1]}"
	end
end

def displayItems (basket)
	basket.each do |key, value|
    puts "#{key}: #{value[2]}"
	end
end

display (basket1)


