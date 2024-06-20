def bubble_sort(array)
  n = array.length
  begin
    swapped = false
    for i in (1...n)
      next unless array[i - 1] > array[i]

      temp = array[i - 1]
      array[i - 1] = array[i]
      array[i] = temp
      swapped = true
    end
  end while swapped
  array
end

array = [4, 3, 78, 2, 8, 9, 3, 4, 5, 87, 92, 31, 56, 98, 6584, 352_184, 5, 6584, 21, 354, 31, 321, 145, 68, 8, 698_545,
         321, 0, 2]
p bubble_sort(array)
