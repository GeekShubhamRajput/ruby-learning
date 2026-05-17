## Array Custom Max Method

def custom_max(arr)
  return nil if arr.empty?

  max = arr[0]
  arr.each do |ele|
    max = ele if ele > max
  end
  max
end

p custom_max([1, 5, 23, 87, 12])   => 87
p custom_max([123.12, 873.34, 1.23])  => 873.34
p custom_max(['Zebra', 'Lion', 'Elephant']) => 'Zebra'
p custom_max([])  => nil
