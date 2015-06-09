class Raindrops
  FACTORS= { 3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(input)
    input.to_s if FACTORS[:input] == nil
  end
end