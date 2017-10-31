puts 'What calculation would you like to do? (add, sub, mult, div)'
calculation_type = gets.chomp
puts 'What is number 1'
num1 = gets.chomp.to_i
puts 'What is number 2'
num2 = gets.chomp.to_i

def calculate(calculation_type, a, b)
  if calculation_type == 'add'
    a + b
  elsif calculation_type == 'sub'
    a - b
  elsif calculation_type == 'mult'
    a * b
  elsif calculation_type == 'div'
    a / b
  end
end

p calculate(calculation_type, num1, num2)
