def bubble_sort(array)
  flag=1
  while flag !=0
    array_size=array.size
    index=0 
    flag=0
    while index<array_size-1
      a=array[index]
      b=array[index+1]
      if a>b
        array[index]=b
        array[index+1]=a
        flag+=1
      end
      index+=1
    end
  end
  array
end

puts bubble_sort([4,3,5,2,100,1,800,500,4,300])