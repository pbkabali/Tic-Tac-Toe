#!/usr/bin/env ruby
require_relative '../lib/game_logic.rb'

def show_board(board)
  puts '-------------'
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '-------------'
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '-------------'
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  puts '-------------'
end

def get_input(player, code, board)
  choice = 0
  until board.any?(choice)
    puts "#{player}. Place #{code}"
    puts 'Select a number between 1 and 9'
    choice = gets.chomp.to_i
    puts 'Invalid input' unless (1..9).any?(choice)

    puts 'Position alreay taken!' unless board.any?(choice) && (1..9).any?(choice)

  end
  choice
end

puts 'Welcome to Tic Tac Toe Game'
b = Board.new
board = b.board
show_board(board)
player1 = Player.new("X")
player2 = Player.new("O")
until b.winner || b.draw
  choice = get_input('Player 1', 'X', board )
  b.update_board(player1.code, choice)
  puts 'Your move is displayed on the board'
  show_board(board)
  if b.winner 
    puts 'Winner is Player 1'
    break
  elsif b.draw 
    break
  else
    choice = get_input('Player 2', 'O', board)
    b.update_board(player2.code, choice)
    puts 'Your move is displayed on the board'
    show_board(board)
    puts 'Winner is Player 2' if b.winner
  end
end

if b.winner
  puts 'Congratulations' 
else
  puts 'This game has ended in a draw'
end
