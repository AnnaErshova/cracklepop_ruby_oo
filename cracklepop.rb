# task:
# for a range of numbers from 1 up to and inclusive of a given number (default is 100), print 'Crackle' if a number is divisible by 3, 'Pop' if it is divisible by 5, 'CracklePop' if divisible by 15, and an actual number otherwise
# solution is made object-oriented
# prints a new number on a new line for easier visibility

class Cracklepop

  def print_outcome_upto(limit=100)
    1.upto(limit) do |x| 
      i = 1
      puts check_divisibility(x)
      i += 1
    end
  end

  private

  def divisible_by_3?(i)
    i%3 == 0
  end

  def divisible_by_5?(i)
    i%5 == 0
  end

  def check_divisibility(i)
    if divisible_by_3?(i) && divisible_by_5?(i)
      "CracklePop"
    elsif divisible_by_3?(i)
      "Crackle"
    elsif divisible_by_5?(i)
      "Pop"
    else 
      i
    end
  end

end

a = Cracklepop.new
a.print_outcome_upto(50)