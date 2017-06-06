class MealsController < ApplicationController
  def index
    @meals = Meal.all

    render("meals/index.html.erb")
  end

  def show
    @meal = Meal.find(params[:id])

    render("meals/show.html.erb")
  end

  def new
    @meal = Meal.new

    render("meals/new.html.erb")
  end

  def create
    @meal = Meal.new

    @meal.name = params[:name]
    @meal.image = params[:image]
    @meal.user_id = params[:user_id]
    @meal.link = params[:link]

    save_status = @meal.save

    if save_status == true
      redirect_to("/meals/#{@meal.id}", :notice => "Meal created successfully.")
    else
      render("meals/new.html.erb")
    end
  end

  def edit
    @meal = Meal.find(params[:id])

    if @meal.user != current_user
      redirect_to("/meals/#{@meal.id}", :notice => "You must be the contributor of the meal to make edits")
    end
  end

  def update
    @meal = Meal.find(params[:id])

    @meal.name = params[:name]
    @meal.image = params[:image]
    @meal.user_id = params[:user_id]
    @meal.link = params[:link]

    save_status = @meal.save

    if save_status == true
      redirect_to("/meals/#{@meal.id}", :notice => "Meal updated successfully.")
    else
      render("meals/edit.html.erb")
    end
  end

  def destroy
    @meal = Meal.find(params[:id])

    @meal.destroy

    if URI(request.referer).path == "/meals/#{@meal.id}"
      redirect_to("/", :notice => "Meal deleted.")
    else
      redirect_to(:back, :notice => "Meal deleted.")
    end
  end
end
