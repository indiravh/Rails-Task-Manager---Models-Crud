Rails.application.routes.draw do
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ## see all tasks
  # get '/tasks', to: 'tasks#index'

  # ##create a new task
  # # 1. GET the task creation form + display form
  # get '/tasks/new', to: 'tasks#new', as: :new_task
  # # 2. POST the parameters to create a new task/ handle the POST request + send information to DB
  # post "/tasks", to: "tasks#create"

  # # See details about one restaurant
  # get 'tasks/:id', to: 'tasks#show', as: :task # ruby gets confused if this line comes before create

  #   # # Update a restaurant
  #   # display pre filled from/GET the HTML form (pre-filled with restaurant attributes) for editing
  # get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  #   # update information in DB/PATCH the parameters to update an existing task
  # patch '/tasks/:id', to: 'tasks#update'

   # # Destroy a restaurant
  delete "/tasks/:id", to: "tasks#destroy", as: :delete_task


  resources :tasks, except: [:delete]

end
