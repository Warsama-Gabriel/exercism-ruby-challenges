module BookKeeping
  VERSION = 3
end

class Hamming
  
  def self.compute(strand_1, strand_2)

    if !strand_1.length.eql?(strand_2.length)
      raise ArgumentError, 'Invalid parameters, strands must be of equal lengths'
    end

    (0...strand_1.length).count do |i|
      strand_1[i] != strand_2[i]
    end
  end
end