R20130211Routing::Application.routes.draw do

  get '/start' => 'home#start'
  get '/a' => 'home#a'
  get '/b' => 'home#b'
  get '/1' => 'home#one'
  get '/2' => 'home#two'
  get '/3' => 'home#three'
  get '/door' => 'home#door'

  root :to => 'home#start'

  # post '/:num' => 'home#num'
  # get '/:letter' => 'home#letter'
  # post '/:num' => 'home#num'

end
