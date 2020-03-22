Rails.application.routes.draw do
  
  get 'prevent/index', as: "prevent"
  get 'information/index', as:"info"
    namespace :api do
    namespace :v1 do
post 'home/sendcitydata', to: 'home#sendcitydata' ,as: 'api'
    end
end
get 'home/index'
root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
