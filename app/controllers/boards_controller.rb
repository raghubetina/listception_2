class BoardsController < ApplicationController
  before_action :current_user_must_be_board_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_board_user
    board = Board.find(params[:id])

    unless current_user == board.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = current_user.boards.ransack(params[:q])
      @boards = @q.result(:distinct => true).includes(:user, :lists).page(params[:page]).per(10)

    render("boards/index.html.erb")
  end

  def show
    @list = List.new
    @board = Board.find(params[:id])

    render("boards/show.html.erb")
  end

  def new
    @board = Board.new

    render("boards/new.html.erb")
  end

  def create
    @board = Board.new

    @board.title = params[:title]
    @board.user_id = params[:user_id]

    save_status = @board.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/boards/new", "/create_board"
        redirect_to("/boards")
      else
        redirect_back(:fallback_location => "/", :notice => "Board created successfully.")
      end
    else
      render("boards/new.html.erb")
    end
  end

  def edit
    @board = Board.find(params[:id])

    render("boards/edit.html.erb")
  end

  def update
    @board = Board.find(params[:id])

    @board.title = params[:title]
    @board.user_id = params[:user_id]

    save_status = @board.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/boards/#{@board.id}/edit", "/update_board"
        redirect_to("/boards/#{@board.id}", :notice => "Board updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Board updated successfully.")
      end
    else
      render("boards/edit.html.erb")
    end
  end

  def destroy
    @board = Board.find(params[:id])

    @board.destroy

    if URI(request.referer).path == "/boards/#{@board.id}"
      redirect_to("/", :notice => "Board deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Board deleted.")
    end
  end
end
