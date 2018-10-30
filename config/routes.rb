Rails.application.routes.draw do
  # Would substitute all the code above
  # resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :tasks

  get    "tasks",          to: "tasks#index"

  get    "tasks/new",      to: "tasks#new", as: "new_task"
  post   "tasks",          to: "tasks#create"

  # NB: The `show` route needs to be *after* `new` route.
  get    "tasks/:id",      to: "tasks#show", as: "task"

  get    "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch  "tasks/:id",      to: "tasks#update"

  delete "tasks/:id",      to: "tasks#destroy"
end
