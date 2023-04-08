Rails.application.routes.draw do
  resources :staffs
  resources :contract_staffs
  resources :assistant_lecturers
  resources :courses
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
