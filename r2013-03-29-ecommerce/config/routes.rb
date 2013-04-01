R20130329Ecommerce::Application.routes.draw do
  root :to => 'products#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :products do
    collection do
      get 'filter/:tag_id', :action => :filter, :as => :filter
    end
    collection do
      get 'search'
    end
  end

end
