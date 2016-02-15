puts 'hello'

animal = "cat"

name = "Kris" #variables can just be set without 'var'

holidays = ["Xmas", "Thxgiving", "St Pattys"]

:january #this is a symbol

holidays_and_dates = {"xmas" => "Dec 25", "Txsgiving" => "4th thursday", "St pat" => "Mar 17"}


if 5 > 10
	puts 'boo!'
elseif 5 == 6
	puts 'nope that wont work'
else if 9 <=8 
	puts 'well that won't work either'
else if 9 >= 100
	puts 'you're really bad at this'
else
	puts 'the end'
end

#&& both must be true || one statement has to be true
 

for i in 0..4
	puts "going through the iterations 0 to 4. see? #{i}"
end 


#functions

def add_two(n)
	n + 2
end


a = add_two(5)

	
