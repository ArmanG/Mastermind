require "./checksequence"
require "./mastermind"

board = Mastermind.new
new_game = CheckSequence.new

loop do

	new_game.values_reset
	
	puts "These are your choices: #{board.display_choices}"
	puts "Pick a sequence: "
	sequence = gets.chomp
	new_game.check_in_seq(sequence)
	new_game.give_hints

	break if new_game.win
end
puts "Congratz you won!"