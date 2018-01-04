require "./functions"

f = Functions.new.functions

puts "List of the available functions : "
f.each do |key, value|
  puts key
end

puts "\nWhat function do you want to invoke?"
func = gets

if f.has_key?(func)
  spawn do
    puts "Executing #{func}"
    system "./functions/c_exe a b c"
  end
else 
  puts "#{func} does not exists"
end

Fiber.yield


