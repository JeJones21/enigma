module Encryptionable

  def encrypted_characters(letters, shifts, key, date)
    encrypted = {:encryption => "", :key => key, :date => date}
    letters.each_with_index do |letter, index|
      if @character_set.index(letter).nil?
        encrypted[:encryption] += letter
      else
        new_index = @character_set.index(letter) + shifts[index % 4]
        encrypted[:encryption] += @character_set[new_index % 27]
      end
    end
    encrypted
  end
end
