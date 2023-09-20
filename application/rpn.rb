def to_rpn(input)
  priorities = { "+" => 1, "-" => 1, "*" => 2, "/" => 2, "^" => 3 }
  output = []
  stack = []

  input.split(/ */).each do |token|
    if token.match?(/[[:digit:]]/)
      output << token
    elsif token == "("
      stack << token
    elsif token == ")"
      while stack.last != "("
        output << stack.pop
      end
      stack.pop
    else
      while !stack.empty? && priorities[token] <= priorities[stack.last].to_i
        output << stack.pop
      end
      stack << token
    end
  end

  until stack.empty?
    output << stack.pop
  end

  output.join(' ')
end

input = '2 * (1 + 4)'
output = to_rpn(input)

puts "input --> #{input}"
puts "output --> #{output}"