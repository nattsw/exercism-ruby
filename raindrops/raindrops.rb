class Raindrops
  SPEAK = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(input)
    rainspeak = ""
    SPEAK.keys.each do |i|
      rainspeak << SPEAK[i] if input.modulo(i).zero? 
    end

    return rainspeak.empty? ? input.to_s : rainspeak
  end
end