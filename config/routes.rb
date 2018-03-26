Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  resources :rfq, :except => [:show]
  get 'rfq/success' => 'rfq#success', as: 'rfq_success'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
