#var 11
a = (1..14).to_a.shuffle


middle = a.size / 2
first_part = a[0, middle].reverse
second_part = a[-(a.size - middle), 8].reverse


c = first_part + second_part

puts "Масив A(14): #{a}"
puts "Масив C(14): #{c}"


