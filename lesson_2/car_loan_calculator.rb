def prompt(message)
  puts "=> #{message}"
end

loop do
  prompt("Welcome to Car loan Calculator!")
  prompt("===============================")
  puts 'Input your loan amount:'

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Must enter positve number.")
    else
      break
    end
  end

  prompt('Input your Annual Percentage Rate(in inerger):')
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  anual_pr = ''
  loop do
    anual_pr = gets.chomp

    if anual_pr.empty? || anual_pr.to_f < 0
      prompt("Must enter positve number.")
    else
      break
    end
  end

  prompt('Input your loan duration:(years):')
  loan_duration = ''

  loop do
    loan_duration = gets.chomp

    if loan_duration.empty? || loan_duration.to_i < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  anual_pr = anual_pr.to_f / 100
  monthly_interest_rate = anual_pr / 12
  months = loan_duration.to_i() * 12

  monthly_payment = loan_amount.to_f * (monthly_interest_rate /
  (1 - (1 + monthly_interest_rate)**-months.to_i))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")
  prompt("Another calculation?")
  prompt("press y to continue")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you and Goobye!")
