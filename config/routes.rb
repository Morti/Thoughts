Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/faq'
  
  HiveMind::Application.routes.draw do
    resources :thoughts
  end
  root :to => "thoughts#index"
end