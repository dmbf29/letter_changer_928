ALPHABET = ("A".."Z").to_a

def encrypt(text)
  # create alphabet
  # split the text of the string into letters
  # transform each letter into the "coded" letter
  # map over letters
  # find the letter's index within alphabet
  # Change the letter's index back -3
  # ask alphabet for the new letter using the new index
  # join the array
  # handle comma and space (special characters)
  text.chars.map do |char|
    index = ALPHABET.index(char)
    index ? ALPHABET[index - 3] : char
  end.join
end
