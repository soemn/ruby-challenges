class Bank
  def initialize(amount)
    @balance = amount
    p 'Your current balance is'
    p @balance
  end

  def check_balance
    p "Your current balance is #{@balance}"
    puts 'Are you done?'
    input = gets.chomp
    input == 'yes' ? (p 'Thank you!') : input
  end

  def deposit
    puts 'How much would you like to deposit?'
    amount = gets.chomp.to_i
    @balance += amount
    check_balance
  end

  def withdraw
    puts 'How much would you like to withdraw?'
    amount = gets.chomp.to_i
    @balance -= amount
    check_balance
  end

  def input
    puts 'What would you like to do? (deposit, withdraw, check_balance)'
    input = gets.chomp
    if input == 'deposit'
      deposit
    elsif input == 'withdraw'
      withdraw
    else check_balance
    end
  end
end

account = Bank.new(4000)

account.input
