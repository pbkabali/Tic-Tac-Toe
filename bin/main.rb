#!/usr/bin/env ruby

# Welcome to Tic Tac Toe Game
puts 'Welcome to Tic Tac Toe Game'

# Display game board

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts '-------------'
puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
puts '-------------'
puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
puts '-------------'
puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
puts '-------------'

# until board.winner or board.draw
# take input from player1
puts 'Player 1, place X'
player1 = gets.chomp.to_i
# update board
board[player1 - 1] = 'X'
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
player2 = gets.chomp.to_i
# update board
board[player2 - 1] = 'O'
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
