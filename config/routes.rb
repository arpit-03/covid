Rails.application.routes.draw do
  
  get 'admin/index' , as: 'adminindex'
  get 'blog/index',as: 'blog_index'
  post 'admin/contentsave', to: 'admin#contentsave', as: 'contentsave'
  get 'prevent/index', as: "prevent"
  get 'information/index', as:"info"
  get 'admin/edit/:id',to: 'admin#edit', as: 'edit'
  post 'admin/edittop3/:id', to: 'admin#edittop3' ,as: 'edittop3'
  post 'admin/edittop3update/:id', to: 'admin#edittop3update', as:'edittop3update'
  patch 'admin/update/:id', to: 'admin#contentupdate', as: 'contentupdate'
  get 'blog/contentpage/:id' , to: 'blog#contentpage', as: 'contentpage'
  get 'admin/sign_in', to: 'admin#sign_in', as: 'sign_in'
post 'admin/checksignin', to: 'admin#checksignin', as: 'checksignin'
    namespace :api do
    namespace :v1 do
post 'home/sendcitydata', to: 'home#sendcitydata' ,as: 'api'
post 'admin/deletepost', to: 'admin#deletepost', as: 'deletepost'
    end
end
get 'home/index'
root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
