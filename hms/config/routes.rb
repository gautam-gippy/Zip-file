Rails.application.routes.draw do
  devise_for :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "patient#index"
  post 'req_appointment', to: "patient#req_appointment"
end
