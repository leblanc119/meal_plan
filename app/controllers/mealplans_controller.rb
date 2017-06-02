class MealplansController < ApplicationController
  def index
    @mealplans = Mealplan.all

    render("mealplans/index.html.erb")
  end

  def show
    @mealplan = Mealplan.find(params[:id])

    render("mealplans/show.html.erb")
  end

  def new
    @mealplan = Mealplan.new

    render("mealplans/new.html.erb")
  end

  def create
    @mealplan = Mealplan.new

    @mealplan.mealtime_id = params[:mealtime_id]
    @mealplan.meal_id = params[:meal_id]
    @mealplan.plan_id = params[:plan_id]

    save_status = @mealplan.save

    if save_status == true
      redirect_to("/mealplans/#{@mealplan.id}", :notice => "Mealplan created successfully.")
    else
      render("mealplans/new.html.erb")
    end
  end

  def edit
    @mealplan = Mealplan.find(params[:id])

    render("mealplans/edit.html.erb")
  end

  def update
    @mealplan = Mealplan.find(params[:id])

    @mealplan.mealtime_id = params[:mealtime_id]
    @mealplan.meal_id = params[:meal_id]
    @mealplan.plan_id = params[:plan_id]

    save_status = @mealplan.save

    if save_status == true
      redirect_to("/mealplans/#{@mealplan.id}", :notice => "Mealplan updated successfully.")
    else
      render("mealplans/edit.html.erb")
    end
  end

  def destroy
    @mealplan = Mealplan.find(params[:id])

    @mealplan.destroy

    if URI(request.referer).path == "/mealplans/#{@mealplan.id}"
      redirect_to("/", :notice => "Mealplan deleted.")
    else
      redirect_to(:back, :notice => "Mealplan deleted.")
    end
  end
end
