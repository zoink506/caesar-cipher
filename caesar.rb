def getInput()
  # Gets input from the user, then supplies that information to the encryption function
  puts "Type the sentence you wish to encrypt: "
  input = gets.chomp
  puts "Type the amount of characters to shift: "
  amount = gets.chomp

  result = calculate_cipher(input, amount)
  puts "\n"
  p result
end 

def calculate_cipher(input = "", amount)
  # Check to see if input and amount are valid strings and numbers
  amount = amount.to_i
  return nil if input == "" || input.class != String
  return nil if input.ascii_only? == false
  return input if amount <= 0

  # Convert input into array of ascii values
  char_array = input.bytes
  
  # If the ascii value is within range of a-z/A-Z, add amount to it to shift its value
   new_char_array = char_array.map do |char|
    if char >= 65 && char <= 90
      # UPPERCASE
      char += amount

      if char > 90
        char -= (((char - 65) / 26).floor) * 26
      end 

      char # return char to map method
    elsif char >= 97 && char <= 122
      # LOWERCASE
      char += amount

      # Checks if the result of adding the specified amount is greater than 122 (ascii value for z, last lowercase letter)
      # If not, then continue without an action (ascii value is within range of lowercase letters)
      # If so, keep minusing 26 (length of alphabet) from char until it is within range
      # Equation finds how many times to minus 26, then * by 26 to minus in one go instead of using a loop (would be inefficient)
      if char > 122
        char -= (((char - 97) / 26).floor) * 26
      end

      char # return char to map method
    else 
      # char is not a letter, so return it unchanged
      char
    end 
  end 

  new_char_array.map! { |char| char.chr }
  new_char_array.join("")
end 

#getInput()
