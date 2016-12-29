class DNA
  def initialize(strand)
    @strand = strand
  end
  
  def hamming_distance(distance)
    return 0 if @strand == distance
    small, large = [@strand.chars, distance.chars].sort_by(&:size)
    
    differences = 0
    small.each_with_index do |char, index|
      char == large[index] ? differences += 0 : differences += 1
    end
    differences
  end
end # end of DNA class

p DNA.new('').hamming_distance('')
p DNA.new('GGACTGA').hamming_distance('GGACTGA')
p DNA.new('ACT').hamming_distance('GGA')
p DNA.new('GGACGGATTCTGACCTGGACTAATTTTGGGG').hamming_distance('AGGACGGATTCTGACCTGGACTAATTTTGGGG')
