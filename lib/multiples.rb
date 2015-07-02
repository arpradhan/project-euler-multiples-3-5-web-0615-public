def collect_multiples(num)
  num -= 1
  if num == 0
    []
  elsif num % 5 == 0 || num % 3 == 0
    collect_multiples(num) << num
  else num > 0
    collect_multiples(num)
  end
end

def sum_multiples(num)
  multiples = collect_multiples(num)
  multiples.inject(0){|sum, m| sum + m}
end