Rails.application.routes.draw do
  devise_for :users

 root to: "homes#top"
 get "menu" => "homes#menu" , as: "menu"
 resources :students,only:[:index, :show, :new, :create, :edit, :update]
 resources :teachers,only:[:index, :show, :new, :create, :edit, :update]
 resources :records,only:[:index, :create, :edit, :update]
 resources :workings,only:[:index, :create, :edit, :update, :destroy]

end