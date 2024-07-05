def custom_map(array, &block)
    new_array = []
    array.each do |element|
      new_array << block.call(element)
    end
     print new_array
end

puts custom_map([1,2,3,4,5]) {|element| element**2}
