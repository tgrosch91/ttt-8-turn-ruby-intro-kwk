def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
array= [" "," "," "," "," "," "," "," "," "]


def input_to_index(user_input="0")
  input=user_input.to_i
  input-1
end

def valid_move?(board,index)
  if (!(board[index] == " " || board[index] == "" || board[index] == nil) == false) && (index.between?(0,8)==true)
    return true
  else return false
  end
end

def move(board,index,value="X")
  board[index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board,index) == true
    move(board,index,value="X")
    display_board(board)
  else turn(board)
  end
end
