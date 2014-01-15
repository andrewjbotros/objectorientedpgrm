# Basic sales tax is applicable at a rate of 10% on all goods, except books, food, and medical products that are exempt. 
#Import duty is an additional sales tax applicable on all imported goods at a rate of 5%, with no exemptions.

#When I purchase items I receive a receipt which lists the name of all the items and their price (including tax), finishing with the total 
#cost of the items, and the total amounts of sales taxes paid. 

#The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains (np/100 rounded up to the nearest 0.05) amount of sales tax.
#Write an application that prints out the receipt details for these shopping baskets...

#need a rounding method
#found one: http://www.hans-eric.com/code-samples/ruby-floating-point-round-off/
class Float
  def round_to(x)
    (self * 10**x).round.to_f / 10**x
  end

  def ceil_to(x)
    (self * 10**x).ceil.to_f / 10**x
  end

  def floor_to(x)
    (self * 10**x).floor.to_f / 10**x
  end
end
#create 3 baskets of goodies
basket1 = {}
basket2 = {}
basket3 = {}

#populate those baskets with the goodies
basket1["book"] = ["exempt", 12.49, 1]
basket1["music CD"] = ["sales", 14.99, 1]
basket1["chocolate bar"] = ["exempt", 0.85, 1]
basket2["imported box of chocolates"] = ["exempt import", 10.00, 1]
basket2["imported bottle of perfume"] = ["import", 47.50, 1]
basket3["imported bottle of perfume"] = ["import", 27.99, 1]
basket3["bottle of perfume"] = ["sales", 18.99, 1]
basket3["packet of headache pills"] = ["exempt", 9.75, 1]
basket3["imported box of chocolates"] = ["exempt import", 11.25, 1]

#this method returns the total bill
def totalBill (basket)
	sum = 0
	basket.each do |key, value|
    sum += value[1]*value[2]
	end
	return sum
end

#this method applies tax
def applyTax (basket)
	basket.each do |key, value|
		if value[0] == "sales"
			value[1] = value[1]*1.10
		elsif value[0] == "import"
			value[1] = value[1]*1.15
		elsif value[0] == "exempt import"
			value[1] = value[1]*1.05
		end
	end
end

#display output as required
def display (basket)

	subTotal = totalBill (basket)
	applyTax (basket)
	total = totalBill (basket)

	basket.each do |key, value|
    puts "#{value[2]} #{key} at #{value[1].round(2)}"
	end

	salesTaxes = total - subTotal
	puts "Sales Taxes: #{salesTaxes.round(2)}"
	puts "Total: #{total.round(2)}"
	puts ""
	#puts basket
	# total = totalBill (basket) - subTotal
	# puts "Sales Taxes: #{total}"
end

#we need to create another "taxed" basket
puts ("Output 1:")
display (basket1)
puts ("Output 2:")
display (basket2)
puts ("Output 3:")
display (basket3)


#these methods display item characteristic (tax status, price, number)
# def displayTaxStatus (basket)
# 	basket.each do |key, value|
#     puts "#{key}: #{value[0]}"
# 	end
# end

# def displayPrice (basket)
# 	basket.each do |key, value|
#     puts "#{key}: #{value[1]}"
# 	end
# end

# def displayItems (basket)
# 	basket.each do |key, value|
#     puts "#{key}: #{value[2]}"
# 	end
# end
