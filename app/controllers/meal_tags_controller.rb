class MealTagsController < ApplicationController

  def new
    @meal_tag = MealTag.new
    @meal = Meal.find(params[:meal_id])

    render("meal_tags/new.html.erb")
  end

  def create
    @meal_tag = MealTag.new

    @meal_tag.meal_id = params[:meal_id]
    @meal_tag.tag_id = params[:tag_id]

    save_status = @meal_tag.save

    if save_status == true
      redirect_to("/meals/#{@meal_tag.meal_id}", :notice => "Tag added to meal successfully.")
    else
      redirect_to("/meals/#{@meal_tag.meal_id}", :notice => "Tag not added to meal.")
    end
  end
end
