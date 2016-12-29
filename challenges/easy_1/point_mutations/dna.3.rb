class DNA # :nodoc:
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other)
    length = [@strand.size, other.size].min - 1

    (0..length).reduce(0) do |distance, idx|
      @strand[idx] == other[idx] ? distance : distance + 1
    end
  end
end

p DNA.new('').hamming_distance('')
p DNA.new('GGACTGA').hamming_distance('GGACTGA')
p DNA.new('ACT').hamming_distance('GGA')
p DNA.new('GGACGGATTCTGACCTGGACTAATTTTGGGG').hamming_distance('AGGACGGATTCTGACCTGGACTAATTTTGGGG')
