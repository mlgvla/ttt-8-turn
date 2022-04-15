def turn(board)
    puts "Please enter 1-9:"

    input = gets.strip 
    position = input_to_index(input)

    if valid_move?(board, position)
        move(board, position)
    else
        turn(board)
    end

    display_board(board)
        
end





# HELPER METHODS

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if !position_taken?(board, index) && index.between?(0, 8)
        true
    else
        false
    end
end

def position_taken?(board, index)
    space = board[index]
    if space == " " || space == "" || space == nil
        false
    else
        true
    end
end

def input_to_index(user_input)
    user_input.to_i - 1
end

def move(board, position, player = "X")
    board[position] = player
end