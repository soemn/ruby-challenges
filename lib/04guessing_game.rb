puts 'Guess a number between 1 and 100'
guess = gets.chomp.to_i

prng = Random.new
$rand_num = prng.rand(100)
$tries = 1

def check(input)
  if input == $rand_num
    p "You got it in #{$tries} tries"
  elsif input > $rand_num
    puts "The number is lower than #{input}. Guess again"
    guess = gets.chomp.to_i
    $tries = $tries + 1
    check(guess)
  else
    puts "The number is higher than #{input}. Guess again"
    guess = gets.chomp.to_i
    $tries = $tries + 1
    check(guess)
  end
end

check(guess)
