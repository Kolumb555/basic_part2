'''Заполнить массив числами от 10 до 100 с шагом 5'''

arr = []

(10..100).each do |i|
  arr << i if i % 5 == 0
end
