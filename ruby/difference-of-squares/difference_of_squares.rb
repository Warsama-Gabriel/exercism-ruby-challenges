module BookKeeping
	VERSION = 3
end

class Squares
	def initialize(n)
		@n = n
	end

	def square_of_sum
		square_of_sums = (0..@n).inject {|sum, n| sum + n} ** 2
	end

	def sum_of_squares
		sum_of_squares = (0..@n).inject {|sum, n| sum + n**2}
	end

	def difference
		square_of_sum - sum_of_squares
	end
end