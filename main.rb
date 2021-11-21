puts '1.Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
array = []
10.times do
	e = rand(100) - 50
	array << e
end
puts array.inspect
array.each_with_index {|e,i| puts e if i%2 == 0} + array.each_with_index {|e,i| puts e if i%2 != 0}
'--------------'
puts '2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
array = []
10.times do
	e = rand(100) - 50
	array << e
end
puts array.inspect
 array.each_with_index {|e,i| puts e if i%2 != 0} + array.each_with_index {|e,i| puts e if i%2 == 0}
'--------------'
puts '3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'

'--------------'
puts '4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].	'

array = [3, 0, 1, 13, 5, 9, 10]

index = nil
array.each_with_index do |e, i|
	next if i == 0 || i == array.size - 1

	if array[0] < e && e < array[-1]
    index = i
    break
	end
end

puts "Value #{array[index]} index #{index}"

'--------------'
puts '5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
array = []
10.times do
	e = rand(10) 
	array << e
end
puts array.inspect
array.each_with_index { |e, i|
  next if (i==0 || i==array.size-1)
  array[i] = e + array[0] if e%2==0
}
puts array.inspect
'--------------'
puts '6. Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
array = []
10.times do
	e = rand(10) 
	array << e
end
puts array.inspect
array.each_with_index { |e, i|
  next if (i==0 || i==array.size-1)
  array[i] = e + array[-1] if e%2==0
}
puts array.inspect
'--------------'
puts '7.Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.	'
array = []
10.times do
	e = rand(10) 
	array << e
end
puts array.inspect
array.each_with_index { |e, i|
  next if (i==0 || i==array.size-1)
  array[i] = e + array[-1] if e%2!=0
}
puts array.inspect
'--------------'

puts '8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
array = []
10.times do
	e = rand(10) 
	array << e
end
puts array.inspect
array.each_with_index { |e, i|
  next if (i==0 || i==array.size-1)
  array[i] = e + array[0] if e%2!=0
}
puts array.inspect
'--------------'

puts '9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
array = []
10.times do
	e = rand(10) - 5
	array << e
end
puts array.inspect
array.each_with_index {|e,i| 
  next if (e < 0 )
  array[i] = array.min
}
puts array.inspect
'--------------'
puts '10.Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
array = []
10.times do
	e = rand(10) - 5
	array << e
end
puts array.inspect
puts 'max'
x = array.max
puts x 
array.each_with_index {|e,i| 
  next if (e < 0 )
  array[i] = array.max
}
puts array.inspect
'--------------'
puts '11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.	'
array = []
10.times do
	e = rand(10) - 5
	array << e
end
puts array.inspect
puts 'min'
x = array.min
puts x 
array.each_with_index {|e,i| 
  next if (e > 0 )
  array[i] = array.min
}
puts array.inspect
'--------------'
puts '12.Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
array = []
10.times do
	e = rand(10) - 5
	array << e
end
puts array.inspect
puts 'max'
x = array.max
puts x 
array.each_with_index {|e,i| 
  next if (e > 0 )
  array[i] = array.max
}
puts array.inspect
'--------------'
puts '13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.	'
array = []
10.times do
	e = rand(10) - 5
	array << e
end
puts array.inspect
x = array[0]
array.each_with_index {|e,i| 
 array[i] = array[i+1]
}
array[-1] = x
puts array.inspect
'--------------'
puts '14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
array = [1,2,3,4,5,6,7,8,9,10]
puts array.inspect
arr = array.rotate(-1)
puts arr.inspect

'--------------'
puts '15. Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil'

'--------------'
puts '16. Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.'

'--------------'

puts '17Дан целочисленный массив. Найти количество его локальных максимумов.. '

'--------------'

puts '18. Дан целочисленный массив. Найти количество его локальных минимумов. '

'--------------'

puts '19. Дан целочисленный массив. Найти максимальный из его локальных максимумов.	'
array = []
10.times do
	e = rand(10) - 5
	array << e
end
puts array.inspect
puts array.max
'--------------'

puts '20. Дан целочисленный массив. Найти минимальный из его локальных минимумов.	'
array = []
10.times do
	e = rand(10) - 5
	array << e
end
puts array.inspect
puts array.min
'--------------'

puts '21. Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.'

'--------------'

puts '22. ан целочисленный массив. Определить количество участков, на которых его элементы монотонно убывают. '

'--------------'

puts '23. Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.'
end

puts array.inspect

nearest_index = 0
nearest_range = (R - array[0]).abs

array.each_with_index do |e, i|
  next if i == 0

  r = (R-e).abs
  if (r < nearest_range)
  	nearest_index = i
  	nearest_range = r 
  end
end

puts "Nearest index #{nearest_index} with element #{array[nearest_index]}"
puts "Range is #{nearest_range}"

'--------------'

puts '24. Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наименее близок к данному числу.	 '

'--------------'

puts '25.  ан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.	'

'--------------'

puts '26.  Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'

'--------------'

puts '27.  Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'

'--------------'

puts '28.  Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.'

'--------------'

puts '29.  Дан целочисленный массив. Упорядочить его по возрастанию.'

'--------------'

puts '30. Дан целочисленный массив. Упорядочить его по убыванию. '

'--------------'

puts '31. Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность. '

'--------------'

puts '32.  Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'

'--------------'
puts '33 Дан целочисленный массив. Найти индекс минимального элемента..'
array =  [1,2,3,4,0,5,6,7,8,9,10]
y = array.min
array.each_with_index {|e,i| puts i if e == y}
'--------------'

puts '34. Дан целочисленный массив. Найти индекс максимального элемента.	'
array =  [1,2,3,4,0,5,6,7,8,9,10]
y = array.max
array.each_with_index {|e,i| puts i if e == y}
'--------------'

puts '35. Дан целочисленный массив. Найти индекс первого минимального элемента. '
array =  [1,2,3,4,0,5,6,7,8,9,10]
y = array.min
array.each_with_index {|e,i| puts i if e == y}
'--------------'

puts '36. Дан целочисленный массив. Найти индекс первого максимального элемента.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
x = array.max
array.each_with_index do |e, i|
	puts i || break if e == x
end
'--------------'

puts '37.  Дан целочисленный массив. Найти индекс последнего минимального элемента.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
x = array.min
y = 0
array.each_with_index do |e, i|
	y = i if e == x
end
puts y
'--------------'

puts '38.  Дан целочисленный массив. Найти индекс последнего максимального элемента.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
x = array.max
y = 0
array.each_with_index do |e, i|
	 y = i if e == x
end
puts y
'--------------'

puts '39.  Дан целочисленный массив. Найти количество минимальных элементов.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
x = array.min
y = 0
array.each_with_index do |e, i|
	 y = y+1 if e == x
end
puts y
'--------------'

puts '40.  Дан целочисленный массив. Найти количество максимальных элементов.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
x = array.max
y = 0
array.each_with_index do |e, i|
	 y = y+1 if e == x
end
puts y
'--------------'

puts '41.  Дан целочисленный массив. Найти минимальный четный элемент.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
arr = []
array.each_with_index do |e, i|
	 arr << e if e%2 == 0
end
puts arr.min
'--------------'

puts '42.  Дан целочисленный массив. Найти минимальный нечетный элемент.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
arr = []
array.each_with_index do |e, i|
	 arr << e if e%2 == 1
end
puts arr.min
'--------------'

puts '43. Дан целочисленный массив. Найти максимальный четный элемент. '
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
arr = []
array.each_with_index do |e, i|
	 arr << e if e%2 == 0
end
puts arr.max
'--------------'
puts '44.  Дан целочисленный массив. Найти максимальный нечетный элемент.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
arr = []
array.each_with_index do |e, i|
	 arr << e if e%2 == 1
end
puts arr.max
'--------------'

puts '45.  Дан целочисленный массив. Найти минимальный положительный элемент.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
arr = []
array.each_with_index do |e, i|
	 arr << e if e > 0
end
puts arr.min
'--------------'

puts '46.  Дан целочисленный массив. Найти максимальный отрицательный элемент.'
array = []
10.times do
	e = rand(10)-5 
	array << e
end
puts array.inspect
arr = []
array.each_with_index do |e, i|
	 arr << e if e < 0
end
puts arr.max
'--------------'

puts '47.  Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
array = []
10.times do
	e = rand(18)-9 
	array << e
end
a = 2
b = 5
puts array.inspect
arr = []
array.each_with_index do |e, i|
	 arr << e if i > a || i < b
end
puts arr.min
'--------------'

puts '48.  Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
array = []
10.times do
	e = rand(18)-9 
	array << e
end
a = 2
b = 5
puts array.inspect
arr = []
array.each_with_index do |e, i|
	 arr << e if i > a || i < b
end
puts arr.max
'--------------'

puts '49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным. '
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.min
y = -1
puts array.inspect
array.each_with_index do |e, i|
	y = y+1
	  break if e == x
end
puts y
'--------------'

puts '50.  Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.	'
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.max
y = -1
puts array.inspect
array.each_with_index do |e, i|
	y = y+1
	  break if e == x
end
puts y
'--------------'

puts '51. Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального. '
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.max
y = 0
z = 1
puts array.inspect
array.each_with_index do |e, i|
	y = y+1
	  break if e == x
end
array.each_with_index do |e, i|
	z = i+1-y
	end
puts z
'--------------'

puts '52. Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального . '
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.min
y = 0
z = 1
puts array.inspect
array.each_with_index do |e, i|
	y = y+1
	  break if e == x
end
array.each_with_index do |e, i|
	z = i+1-y
	end
puts z
'--------------'

puts '53.  Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным'
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.max
y = 0
puts array.inspect
array.each_with_index do |e, i|
	y = y+1
	  break if e == x
end
puts y
'--------------'

puts '54. Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным. '
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.min
y = 0
puts array.inspect
array.each_with_index do |e, i|
	y = y+1
	  break if e == x
end
puts y
'--------------'

puts '55. Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального. '
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.max
y = 1
z = 1
puts array.inspect
array.each_with_index do |e, i|
	y = i+1 if e == x
end
array.each_with_index do |e, i|
	z = i+1-y
	end
puts z
'--------------'

puts '56. Дан целочисленный массив. Найти количество элементов, расположенных после последнего минимального . '
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.min
y = 1
z = 1
puts array.inspect
array.each_with_index do |e, i|
	y = i+1 if e == x
end
array.each_with_index do |e, i|
	z = i+1-y
	end
puts z
'--------------'

puts '57.  Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.'
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.max
y = array.min
z = 0
puts array.inspect
array.each_with_index do |e, i|
	z = i
	break if e == x || e == y
end
puts z
'--------------'

puts '58.  Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.	'
array = []
10.times do
	e = rand(18)-9 
	array << e
end
x = array.max
y = array.min
z = 0
puts array.inspect
array.each_with_index do |e, i|
	z = i if e == x || e == y
end
puts z
'--------------'

