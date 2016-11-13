
class Complement

  def self.of_dna(dna)

    dna_strand = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    if dna.chars.all? {|letter| dna_strand.include?(letter)}
      dna.chars.map {|letter| dna_strand[letter]}.join
    else
      ""
    end
  end
end

module BookKeeping
  VERSION = 4
end
