require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Hey coach!"
my_message = gets.chomp.to_s
while coach_answer_enhanced(my_message) != ""
  puts coach_answer_enhanced(my_message)
  puts "What again ?"
  my_message = gets.chomp.to_s
end
