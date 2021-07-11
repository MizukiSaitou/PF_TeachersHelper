Rails.application.routes.draw do
  devise_for :users

 resources :students,only:[:index, :show, :new, :create, :edit, :update]
 resources :teachers,only:[:index, :show, :new, :create, :edit, :update]
 resources :records,only:[:index, :create, :edit, :update]
 resources :workings,only:[:index, :new, :create, :edit, :update, :destroy]

end