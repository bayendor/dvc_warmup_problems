# Perform algebraic operations on a string, e.g. "1 + 2" => 3

def calculate_string(problem_string)
  problem_string[/(([-|\s])\d+)\D*(([-|\s])\d+)/]
  num_one = Regexp.last_match[1].to_i
  num_two = Regexp.last_match[3].to_i
  problem_string[/(\s[+-\/'*']\s)/]
  operator = Regexp.last_match[1]
  case operator
  when ' + '
    num_one + num_two
  when ' - '
    num_one - num_two
  when ' * '
    num_one * num_two
  else ' / '
       if num_two == 0
         nil
       else
         num_one / num_two
       end
  end
end
