require "./mastermind"


class CheckSequence < Mastermind
	def initialize
		@@Num_in_seq = 0
		@@correct_pos = 0
		@@game = Mastermind.new
		@@winning_seq = @@game.create_sequence
	end

	def check_single_in_seq(char)
		return @@winning_seq.include? char.upcase
	end

	def values_reset
		@@Num_in_seq = 0
		@@correct_pos = 0
	end

	def check_in_seq(seq)
		array_seq = seq.split("")

		array_seq.each do |c|
			if check_single_in_seq(c)
				if check_pos(c, array_seq)
					@@correct_pos += 1
				end
				@@Num_in_seq += 1
			end
		end
	end

	def check_pos(char, arr)
		return arr.index(char.upcase) == @@winning_seq.index(char.upcase)
	end

	def give_hints
		puts "#{@@Num_in_seq} in the sequence, #{@@correct_pos} in the right position"
	end

	def win
		return  @@Num_in_seq == @@correct_pos
	end
end
