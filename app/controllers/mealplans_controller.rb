class MealplansController < ApplicationController
  def index
    @mealplans = Mealplan.all

    render("mealplans/index.html.erb")
  end

  def new
    @plan = Plan.find(params[:id])
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
      redirect_to("/plans/#{@mealplan.plan_id}", :notice => "Meal added successfully.")
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
      redirect_to("/mealplans/#{@mealplan.id}", :notice => "Meal updated successfully.")
    else
      render("mealplans/edit.html.erb")
    end
  end

  def destroy
    @mealplan = Mealplan.find(params[:id])

    @mealplan.destroy

    if URI(request.referer).path == "/mealplans/#{@mealplan.id}"
      redirect_to("/", :notice => "Meal deleted from your plan.")
    else
      redirect_to(:back, :notice => "Meal deleted from your plan.")
    end
  end
end
