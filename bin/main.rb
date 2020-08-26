#!/usr/bin/env ruby

# Welcome to Tic Tac Toe Game
puts 'Welcome to Tic Tac Toe Game'

# Display game board

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts "-------------"
puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
puts "-------------"
puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
puts "-------------"
puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
puts "-------------"


# Ask to Player 1 put X

puts 'Player 1, place X'
player1 = gets.chomp.to_i
board[player1 - 1] = 'X'

# Display the X inside the board in player 1 choice

puts 'Your move is displayed on the board'
puts "-------------"
puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
puts "-------------"
puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
puts "-------------"
puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
puts "-------------"

# Ask to Player 2 put O

puts 'Player 2, place O'
player2 = gets.chomp.to_i
board[player2 - 1] = 'O'

# Display the X inside the board in player 1 choice

puts 'Your move is displayed on the board'
puts "-------------"
puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
puts "-------------"
puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
puts "-------------"
puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
puts "-------------"

# Repeat user inputs until there is a winner

# Display the winner

puts 'Player _ has won the game'