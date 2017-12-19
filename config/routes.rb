Rails.application.routes.draw do
 
  resources :earthmoves_past_days do 
  	collection { post :import }
   end 


 root 'pages#home'
 
  get 'pages/about'

  get 'pages/home'

  get 'pages/contact'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
