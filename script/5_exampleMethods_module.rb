module ExampleMethods
  def CalculatePrice(i, c, w, v)
    x = 24
    totalvolume = total_volume(v, i)
    totalweight = total_weight(w, i)
    totalvolume = total_volume(c, i)
    print_enter_a_amount_ten_times
    calculate_total_value_and_return_in_10_different_strings(totalvolume, totalweight, totalvolume)
  end

  def total_volume(v, i)
    v * i
  end

  def total_weight(w, i) 
    w * i
  end

  def total_volume(v, i, z = nil)
    v * i
  end

  def print_enter_a_amount_ten_times
    (1..10).to_a.each do |i|
      puts 'Enter a new value'
    end
  end

  def calculate_total_value_and_return_in_10_different_strings(total, total1, total2)
    tempval = total + total1
    tempval = tempval + total2
    tempval = tempval * tempval
    (1..10).to_a.each do |i|
      puts 'Result should be below value'
      puts tempval
      puts 'Finalised'
    end
  end

end