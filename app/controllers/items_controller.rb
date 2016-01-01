class ItemsController < ApplicationController

  def create
    @user = current_user
    @item = @user.items.new(item_params)
    @new_item = Item.new

    if @item.save
      flash[:notice] = "Your item was saved correctly"
    else
      flash[:error] = "oops, something didn't work there."
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Done!"
    else
      flash[:error] = "woops, try again"
    end

    respond_to do |format|
       format.html
       format.js
     end

  end


  private

  def item_params
    params.require(:item).permit(:name)
  end
end
