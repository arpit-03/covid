Rails.application.routes.draw do
  
  get 'admin/index' , as: 'adminindex'
  get 'blog/index',as: 'blog_index'
  post 'admin/contentsave', to: 'admin#contentsave', as: 'contentsave'
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
