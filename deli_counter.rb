# Write your code here.
katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]
another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]

def line(queue)
  return puts "The line is currently empty." if queue.empty?
  line_queue = "The line is currently:"
  queue.each_with_index do |name, idx|
    line_queue << " #{idx + 1}. #{name}"
  end
  puts line_queue
end

def take_a_number(queue, name)
  number = queue.size + 1
  queue << name
  puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(queue)
  return puts "There is nobody waiting to be served!" if queue.empty?
  puts "Currently serving #{queue.shift}."
end
