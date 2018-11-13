class Deli 
  @@ticketdispenser = 1 
  
def line(katz_deli)
  if katz_deli.empty? 
    puts "The line is currently empty."
  else 
    current_line = "The line is currently:"
    katz_deli.each.with_index(1) do |person, i|
     current_line <<  " #{i}. #{person}"
    end 
    puts current_line 
  end
end

def take_a_number(katz_deli)
   katz_deli.push(@@ticketdispenser)
   puts "Welcome, your ticket number is #{@@ticketdispenser} and you are #{katz_deli.length} in line."
   @@ticketdispenser += 1 
end 

def now_serving(katz_deli)
  if katz_deli.length == 0 
    puts "There is nobody waiting to be served!"
  else
  puts "Currently serving #{katz_deli.first}."
  katz_deli.shift 
end
end 
end 

new_deli = Deli.new
new_deli.take_a_number([])
new_deli.take_a_number([1])
new_deli.now_serving([1,2])

