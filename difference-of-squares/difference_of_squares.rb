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
    sum = 0
    1.upto(@value) do |i|
      puts i**2
      sum = sum + (i**2)
    end
    sum
  end

  def difference
  end
end