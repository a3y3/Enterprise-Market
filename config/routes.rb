Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  resources :rfqs, :except => [:show]
  get 'rfqs/success' => 'rfqs#success', as: 'rfq_success'

  get 'commodities/search' => 'commodities#search', as: 'commodities_search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
