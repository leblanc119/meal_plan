class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all

    render("favorites/index.html.erb")
  end

  def show
    @favorite = Favorite.find(params[:id])

    render("favorites/show.html.erb")
  end

  def create
    @favorite = Favorite.new

    @favorite.meal_id = params[:meal_id]
    @favorite.user_id = current_user.id

    save_status = @favorite.save

    if save_status == true
      redirect_to("/meals/", :notice => "Favorite created successfully.")
    else
      redirect_to("/meals/", :notice => "Favorite not created.")
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy

    if URI(request.referer).path == "/favorites/#{@favorite.id}"
      redirect_to("/", :notice => "Favorite deleted.")
    else
      redirect_to(:back, :notice => "Favorite deleted.")
    end
  end
end
