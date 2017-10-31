puts 'Enter a string:'
str = gets.chomp

def reverse(str)
  split_str = str.split('')
  split_str.each_index do |index|
    split_str[index] = if index < (str.length / 2)
                         split_str[-index - 1]
                       else str[str.length - index - 1]
                       end
  end
  p split_str.join('')
end

reverse str
