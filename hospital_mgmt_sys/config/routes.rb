Rails.application.routes.draw do
  devise_for :patients, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "patient#index"
  get 'new_appointment', to: "appointment#new"
  post 'new_appointment', to: "appointment#create"
  resources :doctor
  get 'new_doctor', to: "doctor#new"
  post 'new_doctor', to: "doctor#create"
  get 'edit_doctor', to: "doctor#edit"
  patch 'doctor/edit', to: "doctor#update"
  get 'index_doctor', to: "doctor#index"
  delete 'destroy_doctor', to: "doctor#destroy"
end
