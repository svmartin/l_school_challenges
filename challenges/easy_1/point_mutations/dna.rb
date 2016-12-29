class DNA
  def initialize(strand)
    @strand = strand
  end
  
  def hamming_distance(distance)
    if @strand == distance
      0
    elsif @strand.size > distance.size
      temp_strand = @strand.slice(0, distance.size)
      compare_sequences(temp_strand, distance)
    elsif @strand.size < distance.size
      temp_dist = distance.slice(0, @strand.size)
      compare_sequences(@strand, temp_dist)
    else
      compare_sequences(@strand, distance)
    end
  end
  
  # def equal_sizes_strand_cut
    
  # end
  
  # def equal_sizes_distance_cut
    
  # end
  
  def compare_sequences(strand, distance)
    differences = 0
    dist_array = distance.chars
    strand.chars.each_with_index do |char, index|
      if char == dist_array[index]
        differences += 0
      else
        differences += 1
      end
    end
    differences
  end
end # end of DNA class

p DNA.new('').hamming_distance('')
p DNA.new('GGACTGA').hamming_distance('GGACTGA')
p DNA.new('ACT').hamming_distance('GGA')
p DNA.new('GGACGGATTCTGACCTGGACTAATTTTGGGG').hamming_distance('AGGACGGATTCTGACCTGGACTAATTTTGGGG')
