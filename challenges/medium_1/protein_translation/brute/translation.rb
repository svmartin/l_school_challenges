# two methods
# one that takes codons and find the appropriate protein
# another that takes the 
# AUG UUU UGG Methionine Phenylalanine Tryptophan

class InvalidCodonError < StandardError; end

class Translation
  CODONS = { "AUG" => 'Methionine',
           "UUU" => 'Phenylalanine',
           "UUC" => 'Phenylalanine',
           "UUA" => 'Leucine',
           "UUG" => 'Leucine',
           "UCU" => 'Serine',
           "UCC" => 'Serine',
           "UCA" => 'Serine',
           "UCG" => 'Serine',
           "UAU" => 'Tyrosine',
           "UAC" => 'Tyrosine',
           "UGU" => 'Cysteine',
           "UGC" => 'Cysteine',
           "UGG" => 'Tryptophan',
           "UAA" => 'STOP',
           "UAG" => 'STOP',
           "UGA" => 'STOP'
          }.freeze
          
  # def self.of_codon(protein)
  #   result = []
  #   protein.delete(" ").scan(/.{3}/).each do |ele|
  #     current_protein = CODONS[ele]
  #     result << current_protein
  #     break if current_protein == 'STOP'
  #   end
  #   result.uniq.join(" ")
  # end
  
  def self.of_codon(protein)
    result = of_rna(protein)
    return 'STOP' if result.empty?
    result.uniq.join(" ")
  end
  
  def self.of_rna(strands)
    result = []
    strands.delete(" ").scan(/.{3}/).each do |ele|
      raise InvalidCodonError if !CODONS.keys.include?(ele)
      current_protein = CODONS[ele]
      result << current_protein unless current_protein == 'STOP'
      break if current_protein == 'STOP'
    end
    result
  end
end # end Translation class

# p Translation.of_codon('UUU')
# p Translation.of_codon('UUC')
# p Translation.of_codon('AUG')
# p Translation.of_codon('UGG')
# p Translation.of_codon('UAU UAC')
# p Translation.of_codon('UCU UCC UCA UCG')
# p Translation.of_codon('UUA UUG')
# p Translation.of_codon('UGU UGC')
# p Translation.of_codon('UAA UAG UGA')
