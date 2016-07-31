Rails.application.routes.draw do
    mount LetterOpenerWeb::Engine, at: "/letter_opener"

  resources :postings do
    resources :comments
  end

  get 'transaction' => 'users#transaction'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'sessions/new'

  get 'welcome/index'

  #get 'users/new'



  resources :users do
    member do
      get :confirm_email
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  #root 'postings#index'
  root 'welcome#index'

  get "/search" => "postings#search"

end
