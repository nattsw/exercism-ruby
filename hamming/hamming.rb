class Hamming
  VERSION = 1

  def self.compute(first,second)
    no_of_diff = 0
    (0..first.length).each do |i|
      no_of_diff += 1 if first[i] != second[i]
    end
    return no_of_diff
  end
end