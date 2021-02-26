## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

s = ""
File.open("data/3.txt") do |file|
  s = file.readlines()
end

answer = 0
for line in s
  x = line.split(' ')
          .map{ |num| num = num.to_i }
          .minmax
  answer += (x[1] - x[0])
end

puts answer