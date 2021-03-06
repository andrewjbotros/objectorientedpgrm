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

#populate those baskets with the proper goodies
basket1["book"] = ["exempt", 12.49, 1]
basket1["music CD"] = ["sales", 14.99, 1]
basket1["chocolate bar"] = ["exempt", 0.85, 1]

basket2["imported box of chocolates"] = ["exempt import", 10.00, 1]
basket2["imported bottle of perfume"] = ["import", 47.50, 1]
basket3["imported bottle of perfume"] = ["import", 27.99, 1]

basket3["bottle of perfume"] = ["sales", 18.99, 1]
basket3["packet of headache pills"] = ["exempt", 9.75, 1]
basket3["imported box of chocolates"] = ["exempt import", 11.25, 1]

#display input as per instructions
# def customRound (number)
# 	if (number * 100) % 10 <= 5 && (number * 100) % 10 != 0
# 		return (((number*100) - ((number * 100) % 10)).round + 5) / 100.00
# 	else
# 		return number
# 	end
# end

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

#this method returns the total bill
def totalBill (basket)
	sum = 0
	basket.each do |key, value|
    sum += value[1]*value[2]
	end
	return sum
end

def input (basket)
	basket.each do |key, value|
    puts "#{value[2]} #{key} at #{sprintf('%.2f', value[1])}"
	end
	puts ""
end

#display output as per instructions
def output (basket)
	subTotal = totalBill (basket)
	applyTax (basket)
	total = totalBill (basket)
	salesTaxes = total - subTotal

	basket.each do |key, value|
    	puts "#{value[2]} #{key} at #{sprintf('%.2f', value[1])}"
	end

	puts "Sales Taxes: #{sprintf('%.2f', salesTaxes)}"
	puts "Total: #{sprintf('%.2f',total)}"
	puts ""
end

#we need to create another "taxed" basket

puts ("Input 1:")
input (basket1)
puts ("Input 2:")
input (basket2)
puts ("Input 3:")
input (basket3)

puts ("Output 1:")
output (basket1)
puts ("Output 2:")
output (basket2)
puts ("Output 3:")
output (basket3)

# Input 1:
# 1 book at 12.49
# 1 music CD at 14.99
# 1 chocolate bar at 0.85

# Input 2:
# 1 imported box of chocolates at 10.00
# 1 imported bottle of perfume at 47.50

# Input 3:
# 1 imported bottle of perfume at 27.99
# 1 bottle of perfume at 18.99
# 1 packet of headache pills at 9.75
# 1 imported box of chocolates at 11.25

# Output 1:
# 1 book : 12.49
# 1 music CD: 16.49
# 1 chocolate bar: 0.85
# Sales Taxes: 1.50
# Total: 29.83
 
# Output 2:
# 1 imported box of chocolates: 10.50
# 1 imported bottle of perfume: 54.65
# Sales Taxes: 7.65
# Total: 65.15
 
# Output 3:
# 1 imported bottle of perfume: 32.19
# 1 bottle of perfume: 20.89
# 1 packet of headache pills: 9.75
# 1 imported box of chocolates: 11.85
# Sales Taxes: 6.70
# Total: 74.68