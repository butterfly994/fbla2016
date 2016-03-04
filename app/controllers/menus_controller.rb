class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end

  def index
    @menus = Menu.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @menu = Menu.find(params[:id])
    @items = Item.all
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to about_index_path
    end
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(menu_params)
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
  end

  private
    def menu_params
      params.require(:menu).permit(:name, :items, :description)
    end
end
