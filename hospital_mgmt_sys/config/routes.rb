Rails.application.routes.draw do
  devise_for :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "patient#index"
  get 'new_appointment', to: "appointment#new"
end