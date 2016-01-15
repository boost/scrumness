Demo::Application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations'}

  root to: 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/terms', to: 'static_pages#terms'
  get '/confirm-code', to: 'static_pages#confirm_code'


  resources :projects do
    resource :graphs, only: [:show]
    resources :sprints do
    	resources :reviews
    end
  end
end
