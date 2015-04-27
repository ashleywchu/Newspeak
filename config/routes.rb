Rails.application.routes.draw do
  
  #Home page route
  root to: 'home#index'

  #User routes
  get 'newsfeed/:id', to: 'users#newsfeed'
  get 'newscolumn/:id', to: 'users#newscolumn'
  resources :users, except: [:update]

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
  get 'tags', to: 'tags#index'
  get 'tags/:tag', to: 'tags#show', as: :tag
  resources :tags, except: :show


  #Search routes
  get "search", to: 'search#search'
  post "result", to: 'search#result'
  get '/search_suggestions', to: 'search#autocomplete'
  
  #Authentication routes
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'logout', to: 'sessions#destroy', as: 'signout'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

end
