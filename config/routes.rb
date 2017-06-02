Rails.application.routes.draw do
  # Routes for the Mealplan resource:
  # CREATE
  get "/mealplans/new", :controller => "mealplans", :action => "new"
  post "/create_mealplan", :controller => "mealplans", :action => "create"

  # READ
  get "/mealplans", :controller => "mealplans", :action => "index"
  get "/mealplans/:id", :controller => "mealplans", :action => "show"

  # UPDATE
  get "/mealplans/:id/edit", :controller => "mealplans", :action => "edit"
  post "/update_mealplan/:id", :controller => "mealplans", :action => "update"

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
  # CREATE
  get "/mealtimes/new", :controller => "mealtimes", :action => "new"
  post "/create_mealtime", :controller => "mealtimes", :action => "create"

  # READ
  get "/mealtimes", :controller => "mealtimes", :action => "index"
  get "/mealtimes/:id", :controller => "mealtimes", :action => "show"

  # UPDATE
  get "/mealtimes/:id/edit", :controller => "mealtimes", :action => "edit"
  post "/update_mealtime/:id", :controller => "mealtimes", :action => "update"

  # DELETE
  get "/delete_mealtime/:id", :controller => "mealtimes", :action => "destroy"
  #------------------------------

  # Routes for the Plan resource:
  # CREATE
  get "/plans/new", :controller => "plans", :action => "new"
  post "/create_plan", :controller => "plans", :action => "create"

  # READ
  get "/plans", :controller => "plans", :action => "index"
  get "/plans/:id", :controller => "plans", :action => "show"

  # UPDATE
  get "/plans/:id/edit", :controller => "plans", :action => "edit"
  post "/update_plan/:id", :controller => "plans", :action => "update"

  # DELETE
  get "/delete_plan/:id", :controller => "plans", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Meal_tag resource:
  # CREATE
  get "/meal_tags/new/:meal_id", :controller => "meal_tags", :action => "new"
  post "/create_meal_tag", :controller => "meal_tags", :action => "create"

  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/create/:status/:meal_id", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "plans#index"

end
