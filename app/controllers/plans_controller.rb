class PlansController < ApplicationController
  def index
    @plans = Plan.all.order(date: :desc)

    render("plans/index.html.erb")
  end

  def show
    @plan = Plan.find(params[:id])
    @mealplans = Mealplan.all

    render("plans/show.html.erb")
  end

  def show_week
    @plan = Plan.find(params[:id])
    @mealplans = Mealplan.all

    @monday_plan = nil
    @tuesday_plan = nil
    @wednesday_plan = nil
    @thursday_plan = nil
    @friday_plan = nil
    @saturday_plan = nil
    @sunday_plan = nil

    render("plans/show_week.html.erb")
  end

  def show_weekday
    @plan = Plan.find(params[:id])
    @mealplans = Mealplan.all

    render("plans/show_week.html.erb")
  end

  def new
    @plan = Plan.new

    render("plans/new.html.erb")
  end

  def create
    @plan = Plan.new

    @plan.user_id = params[:user_id]
    @plan.date = Chronic.parse(params[:date])

    save_status = @plan.save

    if save_status == true
      redirect_to("/plans/#{@plan.id}", :notice => "Plan created successfully.")
    else
      render("plans/new.html.erb")
    end
  end

  def destroy
    @plan = Plan.find(params[:id])

    @plan.destroy

    if URI(request.referer).path == "/plans/#{@plan.id}"
      redirect_to("/", :notice => "Plan deleted.")
    else
      redirect_to(:back, :notice => "Plan deleted.")
    end
  end
end
