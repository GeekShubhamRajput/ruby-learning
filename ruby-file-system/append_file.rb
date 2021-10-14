## AppendingInRubyFile

10.times do |log|
  sleep 1
  puts "Record Saved..."
  File.open("ruby-file-system/server_logs.txt", "a") {|file| file.puts("Server stated at : #{ Time.new }")}
end
