def compare_fibonacci(informed_number)
  a = 0
  b = 1
  while a <= informed_number
    puts a
    pertences = (a == informed_number)
    temp = a
    a = b
    b = temp + b
  end

  text = pertences ? 'o numero esta na presente na sequencia' : 'o numero nao esta presente na sequencia'
  puts text
end

compare_fibonacci(55)