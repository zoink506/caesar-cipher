def getInput
  puts "Type the sentence you wish to encrypt: "
  input = gets.chomp
  puts "Type the amount of characters to shift: "
  amount = gets.chomp()

  calculate_cipher(input, amount)
end 

def calculate_cipher(input = "", amount)

end 

getInput()
