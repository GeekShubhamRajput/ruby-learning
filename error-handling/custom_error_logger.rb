## CustomErrorLogger

def error_logger(e)
  File.open("error_logger.txt", 'a+') {|file| file.puts "Error occured: #{e} at #{Time.now}" }
end

def addition(a, b)
  begin
    a + b
  rescue StandardError => e
    error_logger(e)
  end
end

addition(4, '5')
