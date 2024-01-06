Rails.application.routes.draw do
  devise_for :users
  get 'facilities/index'
  get 'mca_courses/index'
  get 'mtech_courses/index'
  get 'btech_courses/index'
  get 'btech_programmes/index'
  get 'mca_programme/index'
  get 'mtech_programme/index'
  get 'home/index'
  resources :publications
  resources :research_consultancies
  resources :research_scholars
  resources :faculties
  resources :staffs
  resources :contract_staffs
  resources :assistant_lecturers
  resources :courses
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
