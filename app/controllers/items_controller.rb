class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to about_index_path
    end
  end

  def edit
    @menu = Menu.find(params[:id])
    @item = Item.find(params[:menu])
  end

  def destroy
    @item = Item.find(params[:id])

  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
  end

  private
    def item_params
      params.require(:item).permit(:name, :descrip, :menu)
    end
end
