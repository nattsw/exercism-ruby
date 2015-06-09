class Raindrops
  FACTORS = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(input)
    output = self.has_prime_factor(input)
    if output == ""
      output = input.to_s
    end
    return output
  end

  def self.has_prime_factor(input)
    output = ""
    FACTORS.keys.each do |i|
      output << FACTORS[i] if input.modulo(i).zero? 
    end
    return output
  end
end