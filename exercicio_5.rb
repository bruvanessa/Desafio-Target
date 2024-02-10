def string_inverter(string)
  inverted_string = ''
  (string.length - 1).downto(0) do |i|
    inverted_string << string[i]
  end
  return inverted_string
end
string_to_be_inveted ='Target'

inverted_string = string_inverter(string_to_be_inveted)
puts "String invertida: #{inverted_string}"