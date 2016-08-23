Rails.application.routes.draw do

  get 'homes/show'

  resources :locations
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }
  
  
  #get 'index' => 'home#index'
  get 'main' => 'home#main'
  #get 'single' => 'home#single'
  #get 'result' => 'home#result'
  
  #get 'login' => 'home#login'
  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
  root 'home#phone'
  
  #get 'myfood' => 'home#myfood'
  #get 'qna' => 'home#qna'
  #get 'customer' => 'home#customer'
  #get 'setting' => 'home#setting'
  get 'dic_main' => 'home#dic_main'
  get 'dic_id' => 'home#dic_id'
  get 'screen' => 'home#screen'

end
