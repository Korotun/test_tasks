A = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
B = A.dup

 puts '– узнать количество элементов в массиве;'
puts A.size
puts A.count
puts A.length
 '-------------------------------'

 puts '– перевернуть массив;'
puts A.reverse
 '-------------------------------'

 puts '– найти наибольшее число;   '
puts A.max

  '-------------------------------'
 puts '– найти наименьшее число;   '
puts A.min 

  '-------------------------------'
 puts '– отсортировать от меньшего к большему;   '
puts A.sort

  '-------------------------------'
 puts '– отсортировать от большего к меньшему;   '
puts A.sort.reverse

   '-------------------------------'
 puts '– удалить все нечетные числа;  '
A.each_with_index{|e,i| B.delete(i) if e.even? }
puts B
B = A.dup

   '-------------------------------'
 puts '– оставить только те числа, которые без остатка делятся на 3;  '
one, two = A.partition{ |x| (x % 3).zero? } 
puts one .inspect

 
   '-------------------------------'
 puts '– удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов);  '
 puts A.uniq!.inspect

 
   '-------------------------------'
 puts '– разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого;  '
 A.map{ |elem| puts elem.to_f / 10 }

 
   '-------------------------------'
 puts '– получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;  '
 b = []
c = []
b[1..26] = ('a'..'z').to_a
A.each { |e| c<<b.values_at(e) if e <= 25}
puts c

 
   '-------------------------------'
 puts '– поменять местами минимальный и максимальный элементы массива;  '
puts B.inspect
  A.each_with_index{|e,i| B[i] = A.max if e == A.min; B[i] = A.min if e == A.max}
puts B.inspect
B = A.dup
 
   '-------------------------------'
 puts '– найти элементы, которые находятся перед минимальным числом в массиве;  '
 A.each_with_index{|e,i| puts A[i-1] if e = a.min }

 
   '-------------------------------'
 puts '– необходимо найти три наименьших элемента.  '
 A.min(3)

 
   '-------------------------------'
 puts '  '
 

 