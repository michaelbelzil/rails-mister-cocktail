Rails.application.routes.draw do
  root to: 'cocktails#index'
  delete "doses/:id", to: "doses#destroy", as: "dose"
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
