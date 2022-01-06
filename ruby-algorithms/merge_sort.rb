## MergeSortInRuby

=begin
Merge Sort is a Divide and Conquer algorithm. 
It divides the input array into two sub array, calls itself for the two sub array, 
and then merges the two sorted sub array.
=end

def merge_sort(list)
  if list.length <= 1
    list
  else
    mid = list.length / 2
    left = merge_sort(list[0..mid-1])
    right = merge_sort(list[mid..list.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

p merge_sort([])
p merge_sort([7])
p merge_sort([5, 1])
p merge_sort([5, 1, 64 , 91, 81, 2]) #=> [1, 2, 5, 64, 81, 91]
