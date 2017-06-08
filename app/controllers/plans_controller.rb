class PlansController < ApplicationController
  def index
    @plans = Plan.all.order(date: :desc)
    @today_plan = Plan.find_by(user: current_user, date: Date.today)
    @today = Date.today
    @tmrw = @today+1
    @tmrw_plan = Plan.find_by(user: current_user, date: @tmrw)

    render("plans/index.html.erb")
  end

  def show
    @plan = Plan.find(params[:id])
    @mealplans = Mealplan.all

    render("plans/show.html.erb")
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
      redirect_to("/plans", :notice => "Plan deleted.")
    else
      redirect_to(:back, :notice => "Plan deleted.")
    end
  end
end
