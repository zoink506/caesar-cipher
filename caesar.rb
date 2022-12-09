def getInput()
  # Gets input from the user, then supplies that information to the encryption function
  puts "Type the sentence you wish to encrypt: "
  input = gets.chomp
  puts "Type the amount of characters to shift: "
  amount = gets.chomp

  result = calculate_cipher(input, amount)
  #puts "\n"
  result.each { |char| print char.chr }
  print "\n"
end 

def calculate_cipher(input = "", amount)
  # Check to see if input and amount are valid strings and numbers
  return :error if amount.to_i == 0 || input.ascii_only? == false || input == ""
  amount = amount.to_i

  # Convert input into array of ascii values
  char_array = input.bytes
  p char_array
  
  # If the ascii value is within range of a-z/A-Z, add amount to it to shift its value
   new_char_array = char_array.map do |char|
    if char >= 65 && char <= 90
      # UPPERCASE
      char += amount

      # How to find the amount of times to loop before actually looping?
      # Inefficient code loops multiple times when looping isn't necessary
      while char > 90
        char -= 26
      end 
      char # return char to map method

    elsif char >= 97 && char <= 122
      # lowercase
      char += amount

      while char > 122
        char -= 26
      end 
      char # return char to map method

    else 
      char
    end 
  end 

  p new_char_array
  new_char_array
end 

getInput()
