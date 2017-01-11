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
end
