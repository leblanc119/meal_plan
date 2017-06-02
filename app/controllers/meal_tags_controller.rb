class MealTagsController < ApplicationController
  def index
    @meal_tags = MealTag.all

    render("meal_tags/index.html.erb")
  end

  def show
    @meal_tag = MealTag.find(params[:id])

    render("meal_tags/show.html.erb")
  end

  def new
    @meal_tag = MealTag.new

    render("meal_tags/new.html.erb")
  end

  def create
    @meal_tag = MealTag.new

    @meal_tag.meal_id = params[:meal_id]
    @meal_tag.tag_id = params[:tag_id]

    save_status = @meal_tag.save

    if save_status == true
      redirect_to("/meal_tags/#{@meal_tag.id}", :notice => "Meal tag created successfully.")
    else
      render("meal_tags/new.html.erb")
    end
  end

  def edit
    @meal_tag = MealTag.find(params[:id])

    render("meal_tags/edit.html.erb")
  end

  def update
    @meal_tag = MealTag.find(params[:id])

    @meal_tag.meal_id = params[:meal_id]
    @meal_tag.tag_id = params[:tag_id]

    save_status = @meal_tag.save

    if save_status == true
      redirect_to("/meal_tags/#{@meal_tag.id}", :notice => "Meal tag updated successfully.")
    else
      render("meal_tags/edit.html.erb")
    end
  end

  def destroy
    @meal_tag = MealTag.find(params[:id])

    @meal_tag.destroy

    if URI(request.referer).path == "/meal_tags/#{@meal_tag.id}"
      redirect_to("/", :notice => "Meal tag deleted.")
    else
      redirect_to(:back, :notice => "Meal tag deleted.")
    end
  end
end
