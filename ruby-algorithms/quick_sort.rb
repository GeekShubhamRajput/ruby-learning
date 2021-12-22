## QuickSortInRuby

# It picks an element as pivot and partitions the given array around the picked pivot.

class Array

  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))
    return *left.quicksort, pivot, *right.quicksort
  end
end

p [1, 8, 96, 34, 84, 3].quicksort

# =>[1, 3, 8, 34, 84, 96]
