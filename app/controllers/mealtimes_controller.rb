class MealtimesController < ApplicationController
  def index
    @mealtimes = Mealtime.all

    render("mealtimes/index.html.erb")
  end

  def show
    @mealtime = Mealtime.find(params[:id])

    render("mealtimes/show.html.erb")
  end

  def new
    @mealtime = Mealtime.new

    render("mealtimes/new.html.erb")
  end

  def create
    @mealtime = Mealtime.new

    @mealtime.time = params[:time]

    save_status = @mealtime.save

    if save_status == true
      redirect_to("/mealtimes/#{@mealtime.id}", :notice => "Mealtime created successfully.")
    else
      render("mealtimes/new.html.erb")
    end
  end

  def edit
    @mealtime = Mealtime.find(params[:id])

    render("mealtimes/edit.html.erb")
  end

  def update
    @mealtime = Mealtime.find(params[:id])

    @mealtime.time = params[:time]

    save_status = @mealtime.save

    if save_status == true
      redirect_to("/mealtimes/#{@mealtime.id}", :notice => "Mealtime updated successfully.")
    else
      render("mealtimes/edit.html.erb")
    end
  end

  def destroy
    @mealtime = Mealtime.find(params[:id])

    @mealtime.destroy

    if URI(request.referer).path == "/mealtimes/#{@mealtime.id}"
      redirect_to("/", :notice => "Mealtime deleted.")
    else
      redirect_to(:back, :notice => "Mealtime deleted.")
    end
  end
end
