
module BookKeeping
  VERSION = 3
end

class Raindrops

  def self.convert(num)
    raindrops = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
    factors = (1..num).select {|x| num % x == 0}
    if factors.any? {|factor| raindrops.has_key?(factor)}
      factors.select {|f| raindrops.has_key?(f)}.map {|i| raindrops[i]}.join
    else
      factors.last.to_s
    end
  end
end