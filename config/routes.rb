Hogwarts::Application.routes.draw do
  resources :houses, :only => [:index, :show]
  resources :students, :only => [:index, :show, :new, :create]
  #get '/houses' => 'houses#index'
  #get '/students' => 'students#index'
  #get '/students' => 'students#creat'
  root to: 'welcome#index'
end