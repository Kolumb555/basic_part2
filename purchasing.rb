'''Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара 
(может быть нецелым числом). Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп"
в качестве названия товара.
На основе введенных данных требуетеся:
Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш,
содержащий цену за единицу товара и кол-во купленного товара. 

Также вывести итоговую сумму за каждый товар.
Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".'''

goods = {}
cost = {}
total = 0

loop do
puts 'Введите название товара'
product = gets.chomp
break if product == 'стоп'
puts 'Введите цену за единицу товара'
price = gets.to_f
puts 'Введите кол-во купленного товара'
qty = gets.to_f
goods[product] = {price => qty}
end

goods.each do |prod, h|
  h.each do |pri, qt|
    cost[prod] = pri * qt
    total += pri * qt
  end
end

puts "Покупки: #{goods}.
Итоговая сумма за каждый товар: #{cost}.
Итоговая сумма всех покупок в корзине: #{total}"
