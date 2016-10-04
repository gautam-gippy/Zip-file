Rails.application.routes.draw do
  devise_for :patients, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "patient#index"
  get 'new_appointment', to: "appointment#new"
  post 'new_appointment', to: "appointment#create"
end
