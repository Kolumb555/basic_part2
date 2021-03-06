'''5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.
(Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
Алгоритм опредления високосного года: 

Год високосный, если он делится на четыре без остатка, но если он делится на 100 без остатка, это не високосный год.
Однако, если он делится без остатка на 400, это високосный год. Таким образом, 2000 г. является особым високосным годом,
который бывает лишь раз в 400 лет.www.adm.yar.ru'''

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts 'Введите число'
day = gets.to_i
puts 'Введите месяц'
month = gets.to_i
puts 'Введите год'
year = gets.to_i

#проверка года на високосность
if year % 400 == 0
  yearType = 'leapYear'
elsif year % 4 == 0 && year % 100 != 0
  yearType = 'leapYear'
else
  yearType = 'nonLeapYear'
end

if yearType == 'leapYear'
  months[1] = 29
end

i = 0
totalDays = 0

while i < (month - 1)
  totalDays += months[i]
  i += 1
end

totalDays += day

puts "Порядковый номер даты: #{totalDays}"