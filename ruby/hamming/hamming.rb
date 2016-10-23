class Hamming

  require 'pry'

  def self.compute(a,b)
    strand_1 = a.split('')
    strand_2 = b.split('')
    distance = 0
    i = 0
    if !strand_1.length.eql?(strand_2.length)
      raise ArgumentError, 'Invalid parameters, strands must be of equal lengths'
    else
      until i == strand_1.length do
        position_strand1 = strand_1[i]
        position_strand2 = strand_2[i]

        if !position_strand1.eql?(position_strand2)
          distance += 1
        end
        i += 1
      end
    end
    distance
  end
end