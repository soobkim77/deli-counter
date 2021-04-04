# Write your code here.
katz_deli = []

def line(array)
    line_statement = ["The line is currently:"]
    if array.size == 0 
        puts "The line is currently empty."
    else
        array.each_with_index{|name, index| line_statement << "#{index + 1}. #{name}"}
        puts line_statement.join(" ")
    end
end

def take_a_number(array, name)
    array << name
    puts "Welcome, #{name}. You are number #{array.index(name) + 1} in line."
end

def now_serving(array)
    if array.size == 0
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{array[0]}."
        array.shift()
    end
end