class DNA
  def initialize(strand1)
    @strand1 = strand1
  end

  def hamming_distance(strand2)
    distance = 0
    min, max = [@strand1, strand2].sort_by(&:size)
    min.each_char.with_index do |char, index|
      distance += 1 unless char == max[index]
    end
    distance
  end
end

p DNA.new('').hamming_distance('')
p DNA.new('GGACTGA').hamming_distance('GGACTGA')
p DNA.new('ACT').hamming_distance('GGA')
p DNA.new('GGACGGATTCTGACCTGGACTAATTTTGGGG').hamming_distance('AGGACGGATTCTGACCTGGACTAATTTTGGGG')
