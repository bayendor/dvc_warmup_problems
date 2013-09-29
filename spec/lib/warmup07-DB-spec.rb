require 'spec_helper'
require 'warmup07-DB'

# Write a program that will play tic-tac-toe
#
# Example:
#   game = TicTacToe.new
#   game.play('x', 0, 0)    # => Place an 'x' in upper left corner
#   game.status             # => [['x', '', ''], ['', '', ''],  ['', '', '']]
#   game.play('o', 1, 1)    # => Place an 'o' in middle
#   game.status             # => [['x', '', ''], ['', 'o', ''],  ['', '', '']]
#
#   Once a player has won, whenever play is called, it should raise a Runtime error
#   with the string "____ is the winner, call reset to play again" or "it was a tie, call reset to play again"

# describe TicTacToe do
#   before(:each) do
#     subject.reset
#   end
#   let(:empty_board) { [['', '', ''], ['', '', ''],  ['', '', '']] }
#   describe "initialize" do
#     it "sets the initial game board" do
#       expect(TicTacToe.new.status).to eq(empty_board)
#     end
#   end

#   describe ".status" do
#     it "shows the board state" do
#       expect(subject.status).to eq(empty_board)
#     end
#   end

#   describe ".play(player_value, x_position, y_position)" do
#     context "when a player has won" do
#       context "horizontally" do
#         it "raises an error" do
#           #  (0,0)  (0,1)  (0,2)
#           #  (1,0)  (1,1)  (1,2)
#           #  (2,0)  (2,1)  (2,2)
#           subject.reset
#           subject.play('x', 0, 0)
#           subject.play('o', 1, 0)
#           subject.play('x', 0, 1)
#           subject.play('o', 1, 1)
#           subject.play('x', 0, 2)

#           expect { subject.play('o', 1, 2) }.to raise_error(RuntimeError, "x is the winner, call reset to play again")
#         end
#       end

#       context "vertically" do
#         it "raises an error" do
#           subject.reset
#           subject.play('x', 0, 0)
#           subject.play('o', 1, 1)
#           subject.play('x', 1, 0)
#           subject.play('o', 1, 1)
#           subject.play('x', 2, 0)

#           expect { subject.play('o', 2, 1) }.to raise_error(RuntimeError, "x is the winner, call reset to play again")
#         end
#       end

#       context "diagonally" do
#         it "top left to bottom right raises an error" do
#           subject.reset
#           subject.play('x', 0, 0)
#           subject.play('o', 0, 1)
#           subject.play('x', 1, 1)
#           subject.play('o', 1, 0)
#           subject.play('x', 2, 2)

#           expect { subject.play('o', 2, 1) }.to raise_error(RuntimeError, "x is the winner, call reset to play again")
#         end

#         it "top right to bottom left raises an error" do
#           subject.reset
#           subject.play('x', 2, 2)
#           subject.play('o', 0, 2)
#           subject.play('x', 0, 1)
#           subject.play('o', 1, 1)
#           subject.play('x', 1, 0)
#           subject.play('o', 2, 0)

#           expect { subject.play('o', 0, 0) }.to raise_error(RuntimeError, "y is the winner, call reset to play again")
#         end
#       end
#     end
#     context "when players have tied" do
#       it "raises an error" do
#         subject.reset
#         subject.play('x', 0, 0)
#         subject.play('o', 0, 1)
#         subject.play('x', 0, 2)
#         subject.play('o', 1, 0)
#         subject.play('x', 1, 1)
#         subject.play('o', 1, 2)
#         subject.play('o', 2, 0)
#         subject.play('x', 2, 1)
#         subject.play('o', 2, 2)

#         expect { subject.play('o', 0, 0) }.to raise_error(RuntimeError, "it was a tie, call reset to play again")
#       end
#     end
#     context "with valid plays" do
#       it "updates the board with the new play" do
#         subject.play('x', 0, 0)
#         expect(subject.status).to eq([['x', '', ''], ['', '', ''],  ['', '', '']])
#       end
#     end

#     context "with invalid plays" do
#       it "does not update the board with invalid plays" do
#         subject.play('x', 0, 0)
#         expect(subject.status).to eq([['x', '', ''], ['', '', ''],  ['', '', '']])

#         subject.play('q', 1, 1)
#         expect(subject.status).to eq([['x', '', ''], ['', '', ''],  ['', '', '']])

#         subject.play('x', 3, 0)
#         expect(subject.status).to eq([['x', '', ''], ['', '', ''],  ['', '', '']])

#         subject.play('x', 0, 3)
#         expect(subject.status).to eq([['x', '', ''], ['', '', ''],  ['', '', '']])
#       end

#       it "does not update the board if that position is already taken" do
#         expect(subject.status).to eq(empty_board)
#         subject.play('x', 0, 0)
#         expect(subject.status).to eq([['x', '', ''], ['', '', ''],  ['', '', '']])
#         subject.play('o', 0, 0)
#         expect(subject.status).to eq([['x', '', ''], ['', '', ''],  ['', '', '']])
#       end
#     end
#   end
# end