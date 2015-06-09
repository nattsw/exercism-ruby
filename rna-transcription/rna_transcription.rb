class Complement
  DNA = "GCTA"
  RNA = "CGAU"

  def self.of_dna(strand)
    raise ArgumentError unless strand.chars.all? { |c| DNA.include?(c) }
    strand.tr(DNA,RNA)
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
      else
        raise ArgumentError          
      end
    end
    return nucleotide
  end
end