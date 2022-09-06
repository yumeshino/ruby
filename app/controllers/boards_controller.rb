class BoardsController < ApplicationController
  def index
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(board_params)
    binding.pry
  end

  private
  # このprivateメソッドを呼ぶことでparamsの中にあるboardのキーの中のname、titile、bodyの値のみを取得する

  def board_params
    params.require(:board).permit(:name,:title,:body)
  end
end


