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
          
  def self.of_codon(codon)
    CODONS.fetch(codon) { raise InvalidCodonError }
  end
  
  def self.of_rna(strand)
    strand.scan(/.{3}/).each_with_object([]) do |e, r| 
      r << of_codon(e) unless of_codon(e) == "STOP"
      return r if of_codon(e) == "STOP"
    end
  end
end # class Translation end

# p Translation.of_codon('UUU')
# p Translation.of_codon('UUC')
# p Translation.of_codon('AUG')
# p Translation.of_codon('UGG')
# p Translation.of_codon('UAU')
# p Translation.of_codon('UCU')
# p Translation.of_codon('UUA')
# p Translation.of_codon('UGU')
# p Translation.of_codon('UAA')
# puts "==========="
# p Translation.of_rna('AUGUUUUGG')
# p Translation.of_rna('AUGUUUUAA')
# p Translation.of_rna('UGGUGUUAUUAAUGGUUU')
# p Translation.of_rna('CARROT')
