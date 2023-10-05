# task 3
def gauss_solver(n)
  raise "Invalid input data" unless (3..9).include?(n)

  matrix_a = []
  vector_b = (1..n).to_a

  n.times do |i|
    row = []
    n.times do |j|
      if i == j
        row << 2.0
      else
        row << (i + 1 + j + 2).to_f
      end
    end
    matrix_a << row
  end

  n.times do |i|
    coef = matrix_a[i][i]

    n.times { |j| matrix_a[i][j] /= coef }
    vector_b[i] /= coef

    n.times do |j|
      next if j == i

      coef1 = matrix_a[j][i] / matrix_a[i][i]

      n.times { |k| matrix_a[j][k] -= matrix_a[i][k] * coef1 }
      vector_b[j] -= vector_b[i] * coef1
    end
  end

  vector_b
end

print "Введіть розмірність системи (від 3 до 9): "
n = gets.chomp.to_i

result = gauss_solver(n)

puts "Результати розв'язку:"
puts result.map { |x| x.round(5) }



