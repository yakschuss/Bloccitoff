class ItemsController < ApplicationController

  def create
    @user = current_user
    @item = @user.items.new(item_params)

    if @item.save
      flash[:notice] = "Your item was saved correctly"
      redirect_to user_path(@user)
    else
      flash[:error] = "oops, something didn't work there."
      redirect_to user_path(@user)
    end

  end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Done!"
      redirect_to user_path(@user)
    else
      flash[:error] = "woops, try again"
      redirect_to user_path(@user)
    end

  end


  private

  def item_params
    params.require(:item).permit(:name)
  end
end
