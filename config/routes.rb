Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/faq'
  
  HiveMind::Application.routes.draw do
    resources :thoughts do
		resources :comments
	end
		
	resources :users
	
	resources :user_sessions, only: [ :new, :create, :destroy ]

	get 'login'  => 'user_sessions#new'
	get 'logout' => 'user_sessions#destroy'
	
  end
  root :to => "thoughts#index"
end