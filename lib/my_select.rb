def my_select(collection)
  i = 0 
  array = []
  while i < collection.length 
  array.select << yield(collection[i])
  i += 1 
end
array 
end 
