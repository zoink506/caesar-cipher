def getInput()
  # Gets input from the user, then supplies that information to the encryption function
  puts "Type the sentence you wish to encrypt: "
  input = gets.chomp
  puts "Type the amount of characters to shift: "
  amount = gets.chomp()

  result = calculate_cipher(input, amount)
end 

def calculate_cipher(input = "", amount)
  # Check to see if input and amount are valid strings and numbers
  return :error if amount.to_i == 0 || input.ascii_only? == false

  # Convert input into array of ascii values
  charArray = input.bytes

  # If the ascii value is within range of a-z/A-Z, add amount to it to shift its value
  # If new ascii value is now outside range of a-z/A-Z, minus 26 to loop around
  charArray.each do |char|
    if (char >= 65 && char <= 90) || (char >= 97 && char <= 122)
      puts "#{char.chr} - #{char}: within range"
    else 
      puts "#{char.chr} - #{char} outside range"
    end 
  end 

  charArray
end 

getInput()
