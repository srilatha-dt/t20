students = {
  id: 10,
  branch: "cse",
  name: "srilatha",
  marks: 90
}

s = students.sort_by{|key,value| key.size}

s.each do | key, value |
  puts "#{key}: $#{value}"
end
