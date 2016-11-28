def fibonacci_iterative(num)
  aux = 0
  aux2= 1

  if num < 2
    num = num
  else
    for i in 1..num - 1
      num = (aux +aux2)
      aux = aux2
      aux2 = num
    end
  end
  num
end

def fibonacci_recursive(num)
  if num < 2
    num = num
  else
    num = fibonacci_recursive(num - 2) + fibonacci_recursive(num -1)
  end
  num
end

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) #== 1
p fibonacci_iterative(3) #== 2
p fibonacci_iterative(4) #== 3
p fibonacci_iterative(5) #== 5

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5