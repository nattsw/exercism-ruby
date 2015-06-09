class Complement
  def self.of_dna(strand)
    complement = ''
    strand.each_char do |char|
      case char
      when 'G'
        complement += 'C'
      when 'C'
        complement += 'G'
      when 'T'
        complement += 'A'
      when 'A'
        complement += 'U'
      end
    end
    return complement
  end

  def self.of_rna(strand)
    nucleotide = ''
    strand.each_char do |char|
      case char
      when 'G'
        nucleotide += 'C'
      when 'C'
        nucleotide += 'G'
      when 'A'
        nucleotide += 'T'
      when 'U'
        nucleotide += 'A'
      end
    end
    return nucleotide
  end
end