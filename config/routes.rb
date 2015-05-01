Rails.application.routes.draw do
  
  #Home page route
  root to: 'home#index'

  #User routes
  get 'newsfeed/:id', to: 'users#newsfeed'
  get 'newscolumn/:id', to: 'users#newscolumn'
  get 'journalists', to: 'users#index'
  resources :users

  #Subscription routes
  post 'subscribe', to: 'subscriptions#create'
  post 'unsubscribe', to: 'subscriptions#destroy'

  #Articles routes
  resources :articles do
    member { post :vote} 
    resources :comments
  end


  #conversations
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end

  #messages
  resources :messages, only: [:new, :create]

  #Tags routes
  # get 'tags', to: 'tags#index'
  get 'tags/:tag', to: 'articles#tag_index', as: :tag
  # resources :tags, except: :show

  #Search routes
  get "search", to: 'search#search'
  post "result", to: 'search#result'
  get 'search_suggestions', to: 'search#autocomplete'
  
  #Authentication routes
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'logout', to: 'sessions#destroy', as: 'signout'

  #demo
  get "demo", to: 'sessions#demo'

end
