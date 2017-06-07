class MealplansController < ApplicationController
  def index
    @mealplans = Mealplan.all

    render("mealplans/index.html.erb")
  end

  def newf_plan
    @plan = Plan.find(params[:plan_id])
    @mealplan = Mealplan.new

    render("mealplans/newf_plan.html.erb")
  end

  def newf_meal
    @meal = Meal.find(params[:meal_id])
    @mealplan = Mealplan.new

    render("mealplans/newf_meal.html.erb")
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
      redirect_to("/plans/#{@mealplan.plan_id}", :notice => "Meal not added successfully.")
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
