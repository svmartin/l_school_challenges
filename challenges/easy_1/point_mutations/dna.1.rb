class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(strand_2)
    strand_1 = @strand[0, strand_2.length]

    strand_1.chars.zip(strand_2.chars).count { |pair| pair.first != pair.last }
  end
end

p DNA.new('').hamming_distance('')
p DNA.new('GGACTGA').hamming_distance('GGACTGA')
p DNA.new('ACT').hamming_distance('GGA')
p DNA.new('GGACGGATTCTGACCTGGACTAATTTTGGGG').hamming_distance('AGGACGGATTCTGACCTGGACTAATTTTGGGG')
