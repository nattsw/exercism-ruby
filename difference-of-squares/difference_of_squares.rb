class Squares
  def initialize(newvalue)
    @value = newvalue
  end

  def square_of_sums
    sum = 0
    1.upto(@value) do |i|
      sum = sum + i
    end
    sum**2
  end

  def sum_of_squares
  end

  def difference
  end
end