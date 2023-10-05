# var 1 (11 does not exist)
n = 8

matrix_a = Array.new(n) { Array.new(n) { |i| i == n - 1 ? 1 : 0 } }

matrix_b = Array.new(n) { Array.new(n) { rand(10) } }

puts "Матриця A:"
matrix_a.each { |row| puts row.join("\t") }

puts "\nМатриця B:"
matrix_b.each { |row| puts row.join("\t") }

puts "\nВведіть число, на яке потрібно помножити матрицю B:"
number = gets.chomp.to_i

result_matrix = matrix_b.map { |row| row.map { |element| element * number } }

puts "\nРезультат множення матриці B на число #{number}:"
result_matrix.each { |row| puts row.join("\t") }

