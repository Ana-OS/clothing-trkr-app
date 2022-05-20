class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy, :flag, :unflag, :delete]
  def index
    @items = Item.where(flagged: false)
  end

  def show;end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit;end

  def update
   if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  def delete
    # raise
  end

  def flag
    @item.update(comment: params["item"][:comment], flagged: true)
    redirect_to deletion_path
  end

  def unflag
    @item.update(comment: nil, flagged: false)
    redirect_to deletion_path
  end

  def flagged_list
    @items = Item.where(flagged: true)
  end


  private

  def item_params
    params.require(:item).permit(:name, :type_of_product, :color, :size, :price, :comment, :quantity, :photo)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
