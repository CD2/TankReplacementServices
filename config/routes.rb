Rails.application.routes.draw do

  root 'pages#home'

  get 'login' =>  'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  
  get 'contact_us' => 'enquiries#new'
  get 'contact_us/thanks' => 'enquiries#thanks'
  
  get 'about' => 'pages#about'
  get 'faq' => 'pages#faq'

  resources :services, only: [:index, :show]
  resources :testimonials, only: [:index]
  resources :projects, only: [:index, :show]
  resources :enquiries, only: [:new, :create]
  resources :sessions, only: [:new, :create]

  namespace :admin do
    root 'projects#index'

    resources :services, except: [:show]
    resources :faqs, except: [:show]
    resources :testimonials, except: [:show]
    resources :promotion_cards, except: [:show]
    resources :pages, except: [:show]
    resources :projects, except: [:show]
    resources :enquiries, only: [:index, :show, :destroy]
    resources :users, except: [:show]
  end

  resources :pages, only: [:show], path: '/'


end
