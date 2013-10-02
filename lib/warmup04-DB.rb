#Perform algebraic operations on a string, e.g. "1 + 2" => 3

def calculate_string(problem_string)
  problem_string[/(([-|\s])\d+)\D*(([-|\s])\d+)/]
  num_one = $1.to_i
  num_two = $3.to_i
  problem_string[/(\s[+-\/'*']\s)/]
  operator = $1
  case operator
  when ' + '
    result = num_one + num_two
  when ' - '
    result = num_one - num_two
  when ' * '
    result = num_one * num_two
  else ' / '
    if num_two == 0
      result = nil
    else
      result = num_one / num_two
    end
  end
end

