class Hamming
  VERSION = 1

  def self.compute(first,second)
    return first.length == second.length
  end
end