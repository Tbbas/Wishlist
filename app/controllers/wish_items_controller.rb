class WishItemsController < ApplicationController
  before_action :set_wish_list

  def create
      @wish_item = @wish_list.wish_items.create(wish_item_params)
      redirect_to @wish_list
  end
  def show
      @wish_item= @wish_list.wish_items.find(params[:id])
  end
  def destroy
    @wish_item = @wish_list.wish_items.find(params[:id])
    if @wish_item.destroy
      flash[:success] = "Wish list item was deleted"
    else
      flash[:error] = "Wish item could not be deleted"
    end
    redirect_to @wish_list
  end

  private

  def set_wish_list
    @wish_list = WishList.find(params[:wish_list_id])
  end

  def wish_item_params
      params[:wish_item].permit(:name,:description,:price,:url,:image)
  end
end
