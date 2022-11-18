class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  # get '/lists', to: 'lists#index'
  def index
    @lists = List.all
  end

  # get '/lists/:id', to: 'lists#show'
  def show
  end

  # get '/lists/new', to: 'lists#new'
  def new
    @list = List.new
  end

  # post '/lists', to: 'lists#create'
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, photos: [])
  end
end
