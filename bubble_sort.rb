def bubble_sort(arr)
  new = []
  (1..arr.length).each do
    x = arr.min
    arr.delete(x)
    new.push(x)
  end
  print new
end

puts bubble_sort([2, 4, 1, 6, 5])