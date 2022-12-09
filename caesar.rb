def getInput()
  # Gets input from the user, then supplies that information to the encryption function
  puts "Type the sentence you wish to encrypt: "
  input = gets.chomp
  puts "Type the amount of characters to shift: "
  amount = gets.chomp()

  result = calculate_cipher(input, amount)
  p result
end 

def calculate_cipher(input = "", amount)
  # First, check to see if input and amount are valid strings and numbers
  # If not a valid string/number, return nil
  # Convert input into array of ascii values
  # If the ascii value is within range of a-z/A-Z, add amount to it to shift its value
  # If new ascii value is now outside range of a-z/A-Z, minus 26 to loop around
  return :error if amount.to_i == 0 || input.ascii_only? == false
  
  

  input
end 

getInput()
