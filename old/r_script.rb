puts "Hello from Spawner"

fork do
	system "./c_exe a b c"
end

puts "Out of spawner"