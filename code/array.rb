[1, 2, 3].each do |n|
  text = "Current number is: #{n}"
  puts text
end

[1,2,3].each_with_index do |i, n|
  puts "#{i} #{n}"
end
