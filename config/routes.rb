Rails.application.routes.draw do
  devise_for :users

 root to: "homes#top"
 get "menu" => "homes#menu" , as: "menu"
 resources :students,only:[:index, :show, :new, :create, :edit, :update]
 resources :teachers,only:[:index, :show, :new, :create, :edit, :update]
 resources :records,only:[:index, :destroy, :create, :edit, :update]
 resources :shifts,only:[:index, :create, :edit, :update, :destroy]
 resources :lessons,only:[:index, :new, :create, :edit, :update, :destroy]
 get 'lessons/search' => 'lessons#search'

end