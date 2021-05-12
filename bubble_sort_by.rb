def bubble_sort_by(arr)
  new = []
  yield arr if block_given?
  1.upto(arr.length).each do
    x = arr.max
    new.push(x)
    arr.delete(x)
  end
  print new
  puts ''
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
   left.length - right.length
end