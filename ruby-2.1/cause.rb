begin
  begin
    raise "Error A"
  rescue => error
    raise "Error B"
  end
rescue => error
  puts "Current failure: #{error.inspect}"
  puts "Original failure:  #{error.cause.inspect}"
end