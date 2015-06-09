class Hamming
  VERSION = 1

  def self.compute(first,second)
    assert_if_same_length(first,second)
    no_of_diff = 0
    (0..first.length).each do |i|
      no_of_diff += 1 if first[i] != second[i]
    end
    no_of_diff
  end

  private
  def self.assert_if_same_length(first,second)
    raise ArgumentError if first.length != second.length
  end

end