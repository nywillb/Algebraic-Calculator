puts "What operation do you want to use?"
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
    puts "You did not put a valid operation :( The program is now restarting."
    operation = "invalid"
  end
  return operation
end

operation = pick(user_input_operation)
if operation != "invalid"
  puts "What is the first number in your equation (eg. first number #{operation} second number)"
  numberOne = gets.chomp.to_f
  puts "What is the second number in your equation (eg. first number #{operation} second number)"
  numberTwo = gets.chomp.to_f
  if operation == "+"
    puts "#{numberOne} #{operation} #{numberTwo} = #{numberOne + numberTwo}"
  elsif operation == "-"
     puts "#{numberOne} #{operation} #{numberTwo} = #{numberOne - numberTwo}"
  elsif operation == "*"
    puts "#{numberOne} #{operation} #{numberTwo} = #{numberOne * numberTwo}"
  elsif operation == "/"
    puts "#{numberOne} #{operation} #{numberTwo} = #{numberOne / numberTwo}"
  end
end