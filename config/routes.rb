Rails.application.routes.draw do
  # Routes for the Mealplan resource:
  # CREATE
  get "/mealplans/new_plan/:plan_id", :controller => "mealplans", :action => "newf_plan"
  get "/mealplans/new_meal/:meal_id", :controller => "mealplans", :action => "newf_meal"
  post "/create_mealplan", :controller => "mealplans", :action => "create"

  # READ
  get "/mealplans", :controller => "mealplans", :action => "index"

  # DELETE
  get "/delete_mealplan/:id", :controller => "mealplans", :action => "destroy"
  #------------------------------

  # Routes for the Meal resource:
  # CREATE
  get "/meals/new", :controller => "meals", :action => "new"
  post "/create_meal", :controller => "meals", :action => "create"

  # READ
  get "/meals", :controller => "meals", :action => "index"
  get "/meals/:id", :controller => "meals", :action => "show"

  # UPDATE
  get "/meals/:id/edit", :controller => "meals", :action => "edit"
  post "/update_meal/:id", :controller => "meals", :action => "update"

  # DELETE
  get "/delete_meal/:id", :controller => "meals", :action => "destroy"
  #------------------------------

  # Routes for the Mealtime resource:

  # READ
  get "/mealtimes", :controller => "mealtimes", :action => "index"

  #------------------------------

  # Routes for the Plan resource:
  # CREATE
  get "/plans/new", :controller => "plans", :action => "new"
  post "/create_plan", :controller => "plans", :action => "create"

  # READ
  get "/plans", :controller => "plans", :action => "index"
  get "/plans/:id", :controller => "plans", :action => "show"

  # DELETE
  get "/delete_plan/:id", :controller => "plans", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  
  #------------------------------

  # Routes for the Meal_tag resource:
  # CREATE
  get "/meal_tags/new/:meal_id", :controller => "meal_tags", :action => "new"
  post "/create_meal_tag", :controller => "meal_tags", :action => "create"

  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/create/:meal_id", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "plans#index"

end
