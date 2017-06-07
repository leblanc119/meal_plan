class MealtimesController < ApplicationController
  def index
    @mealtimes = Mealtime.all

    render("mealtimes/index.html.erb")
  end
end
