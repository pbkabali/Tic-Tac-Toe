#!/usr/bin/env ruby
require_relative '../lib/game_logic.rb'

# Welcome to Tic Tac Toe Game
puts 'Welcome to Tic Tac Toe Game'

# Display game board

b = Board.new
board = b.board
puts '-------------'
puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
puts '-------------'
puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
puts '-------------'
puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
puts '-------------'

player1 = Player.new("X")
player2 = Player.new("O")
# until board.winner or board.draw
# take input from player1
puts 'Player 1, place X'
choice = gets.chomp.to_i
# Validate input, if input is in (1..9)
# update board
b.update_board(player1.code, choice)
# show board
puts 'Your move is displayed on the board'
puts '-------------'
puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
puts '-------------'
puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
puts '-------------'
puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
puts '-------------'
# if board.winner
# break
# else
# take input from player2
puts 'Player 2, place O'
choice = gets.chomp.to_i
# Validate input, if input is in (1..9)
# update board
b.update_board(player2.code, choice)
# show the board
puts 'Your move is displayed on the board'
puts '-------------'
puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
puts '-------------'
puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
puts '-------------'
puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
puts '-------------'
# end
# end

# If Board.winner
# check which player won
# Announce the winner
puts 'Winner is ____'
# Else
# Announce draw
