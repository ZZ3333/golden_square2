def encode(plaintext, key)
    # (('a'...'z').to_a => returns array of letters a - y *NOT* a-z
    # cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    cipher = key.chars.uniq + (('a'..'z').to_a  - key.chars)
    
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    # (('a'...'z').to_a => returns array of letters a - y *NOT* a-z
    # cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[65 - char.ord]
    end
    return plaintext_chars.join
  end


# Intended output:


# the example string contains the letter 'z' not mapped by initial method

 encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
 decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"