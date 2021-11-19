## BubbleSortInRuby

# Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping 
# the adjacent elements if they are in wrong order.

def bubble_sort(unsorted_arr)
  n = unsorted_arr.length

  loop do
    swapped = false
    (n-1).times do |i|
      if unsorted_arr[i] > unsorted_arr[i+1]
        unsorted_arr[i], unsorted_arr[i+1] = unsorted_arr[i+1], unsorted_arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  unsorted_arr
end

arr = [1, 8, 5, 2, 7, 1, 10, 7]
p bubble_sort(arr) #=> [1, 1, 2, 5, 7, 7, 8, 10]
