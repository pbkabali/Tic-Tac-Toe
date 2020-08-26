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
until b.winner or b.draw
  # take input from player1
  choice = 0
  until board.any?(choice)
    puts 'Player 1. Place X'
    puts 'Select a number between 1 and 9'
    choice = gets.chomp.to_i
    puts 'Invalid input' unless (1..9).any?(choice)
    puts 'Position alreay taken!' unless board.any?(choice) && (1..9).any?(choice)
  end
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
  if b.winner
    puts 'Winner is Player 1'
    break
  else
  # take input from player2
    choice = 0
    until board.any?(choice)
      puts 'Player 2. Place O'
      puts 'Select a number between 1 and 9'
      choice = gets.chomp.to_i
      puts 'Invalid input' unless (1..9).any?(choice)
      puts 'Position alreay taken!' unless board.any?(choice) && (1..9).any?(choice)
    end
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
    puts 'Winner is Player 2' if b.winner
  end
end

#If Board.winner
# check which player won
# Announce the winner
puts 'Congratulations'
# Else
# Announce draw
