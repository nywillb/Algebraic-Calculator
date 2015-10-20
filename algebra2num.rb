begin
  gem "colorize"
rescue Gem::LoadError
  puts "Calculator Error 001: Unable to Load Gem"
  puts "The \"Colorize\" Gem was unable to be loaded. The program will not run correctly."
end
should_i_keep_asking? = true
puts "Welcome to our calculator".light_blue.blink


puts "What is your #{"variable".green}?"
equVar = gets.chomp


puts "What #{"operation".blue} is in your equation?"
user_input_operation = gets.chomp
def pick(var)
  if var.downcase == "addition" || var == "+" || var.downcase == "plus"
    operation = "+"
  elsif var.downcase == "subtraction" || var == "-" || var.downcase == "minus"
    operation = "-"
  elsif var.downcase == "multiplication" || var == "*" || var.downcase == "x" || var.downcase == "times"
    operation = "*"
  elsif var.downcase == "division" || var == "÷" || var.downcase == "/" || var.downcase == "divided"
    operation = "/"
  else
    puts "Hey! You broke the rules. #{user_input_operation} is not a valid operation. You can choose from addition, subtraction, multiplication, or division."
    operation = "invalid"
  end
  return operation
end

puts pick(user_input_operation)
while(operation == "invalid")
  puts ""
  puts pick(user_input_operation)
end

operation = pick(user_input_operation)
if operation != "invalid"
  puts "What is the first number in your equation (eg.#{equVar.green} = #{"first number".red} #{operation.blue} #{"second number".light_blue})"
  numberOne = gets.chomp.to_f
  puts "What is the second number in your equation (eg.#{equVar.green} = #{"first number".red} #{operation.blue} #{"second number".light_blue})"
  numberTwo = gets.chomp.to_f
  if operation == "+"
    puts "#{equVar.green} = #{numberOne + numberTwo}"
    total = numberOne. + numberTwo
  elsif operation == "-"
    puts "#{equVar.green} = #{numberOne - numberTwo}"
    total = numberOne - numberTwo
  elsif operation == "*"
    puts "#{equVar.green} = #{numberOne * numberTwo}"
    total = numberOne * numberTwo
  elsif operation == "/"
    puts "#{equVar.green} = #{numberOne / numberTwo}"
    total = numberOne / numberTwo
  end
end
puts "Thank you for using the awesome calculator! Have a great day!".light_blue.blink
