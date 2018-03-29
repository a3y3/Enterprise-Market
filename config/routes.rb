Rails.application.routes.draw do
  devise_for :users, controllers: {                                                    
    sessions: 'users/sessions'                                                         
	}  

  get 'welcome/index'

  resources :rfqs, :except => [:show]
  get 'rfqs/success' => 'rfqs#success', as: 'rfq_success'

  get 'commodities/search' => 'commodities#search', as: 'commodities_search'

  get '/admin/rfq/all' => 'admin#rfq_all'
  get '/admin/rfq/pending' => 'admin#rfq_pending'

  
  root 'welcome#index'
end
