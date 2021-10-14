MAPPINGS = {
  "(" => ")",
  "[" => "]",
  "{" => "}"
}
def is_valid(s)  
  stack = []
  s.each_char do |c|
    if MAPPINGS.keys.include?(c)
      stack.push c
    else
      if stack.pop == MAPPINGS.invert[c]
        next
      else
        stack.push c
      end
    end
  end
  stack.empty?
end