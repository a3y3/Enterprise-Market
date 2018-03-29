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
  get '/admin/rfq/:id' => 'admin#rfq_show'
  get '/admin/rfq/commodity/:id' => 'admin#rfq_commodity'
  get '/admin/rfq/description/:id' => 'admin#rfq_description'

  
  root 'welcome#index'
end
