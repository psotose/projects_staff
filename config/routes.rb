Rails.application.routes.draw do
  resources :staffs
  resources :projects
  get 'assignations/create'
  post 'assignations/:project_id', to: "assignations#create", as: 'assign_staff'
  delete 'assignations/:project_id/:staff_id', to:'assignations#destroy', as:'delete_staff'


  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
