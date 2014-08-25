

class Mastermind

	def initialize
		@@choices = ["A", "B", "C", "D", "E", "F"]
	end

	def create_sequence
		@@winning_seq = @@choices.sample(4)
		return @@winning_seq
	end

	def display_sequence
		return @@winning_seq
	end

	def display_choices
		return @@choices
	end
end

