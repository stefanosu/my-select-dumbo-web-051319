def my_select(collection)
  i = 0 
  array = []
  while i < collection.length 
  array << yield(collection[i])
  i += 1 
  my_select(collection) do |num| 
    collection.select 
end
 
end 

def my_select(array) 
count = 0
result = []

while count < array.size
  if yield(array[count]) == true
  result.push(array[count])
end
  count+=1
end
result
end