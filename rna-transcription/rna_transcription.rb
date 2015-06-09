class Complement
  def self.of_dna(strand)
    complement = ''
    case strand
    when 'G'
      complement = 'C'
    when 'C'
      complement = 'G'
    when 'T'
      complement = 'A'
    when 'A'
      complement = 'U'
    end
  end
end