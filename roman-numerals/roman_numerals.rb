class Integer
  ROMAN = { 1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I' }
  # ROMAN = [{ 1000 => 'M' }, { 500 => 'D' }, { 100 => 'C' }, { 50 => 'L' }, { 10 => 'X'}, { 5 => 'V'}, { 1 => 'I'}]
  
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
    ROMAN.map do |i, s|
      if value - i >= 0
        roman << s
        value -= i
        break
      else
        Hash[ROMAN.to_a.reverse].map do |ri, rs|
          if i == ri || i-ri==ri
            break
          elsif value - (i-ri) >= 0
            roman << rs << s
            value -= i-ri
            break
          end #end if
        end #end map
      end #end if
    end #end map
    return roman, value
  end #end function
end #end class