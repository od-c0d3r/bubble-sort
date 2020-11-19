  def bubble_sort(array)
  flag = 1
  while flag != 0
    flag = 0
    index = 0 
    while index < array.size-1
      a = array[index]
      b = array[index+1]
      if a > b
        array[index] = b
        array[index+1] = a
        flag = 1
      end
      index += 1
    end
  end
  array
end

# puts bubble_sort([4,3,5,2,100,1,800,500,4,300])

def bubble_sort_by(array)
  flag = 1
  while flag != 0
    flag = 0
    index = 0 
    while index < array.size-1
      left = array[index]
      right = array[index+1]
      yield(left,right)
      difference = left.length - right.length
      if difference > 0
        array[index] = right
        array[index+1] = left
        flag = 1
      end
      index += 1
    end
  end
   p array
end

# bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length}
