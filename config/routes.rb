Letterpressing::Application.routes.draw do

  get "words/search"

  root :to => 'pages#home'

end
