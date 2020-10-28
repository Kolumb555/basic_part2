'''4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).'''

vowels = ['a', 'e', 'i', 'o', 'u']
alphabet = []

('a'..'z').each { |l| alphabet << l}

vowel_hash = {}

alphabet.each do |l|
  if vowels.include?(l)
    vowel_hash[l] = (alphabet.index(l) + 1)
  end
end
