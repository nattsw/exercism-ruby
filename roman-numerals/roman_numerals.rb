class Integer
  ROMAN = { 1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I' }

  def to_roman
    roman = ""
    roman = reduce(roman, self)
  end

  def reduce(roman, value)
    return roman if value == 0 # base case
    roman, value = get_largest_roman(roman, value)
    reduce(roman, value)    # getting closer to base case 
  end

  def get_largest_roman(roman, value)
    ROMAN.keys.each do |i|
      if value - i >= 0
        roman << ROMAN[i]
        value -= i
        break
      end
    end
    return roman, value
  end
end