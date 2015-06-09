class Complement
  DNA = "GCTA"
  RNA = "CGAU"

  def self.of_dna(strand)
    raise ArgumentError unless strand.chars.all? { |c| DNA.include?(c) }
    strand.tr(DNA,RNA)
  end

  def self.of_rna(strand)
    raise ArgumentError unless strand.chars.all? { |c| RNA.include?(c) }
    strand.tr(RNA,DNA)
  end
end