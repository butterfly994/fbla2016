Rails.application.routes.draw do
  devise_for :admins
  root to: 'about#index'
  devise_for :users

  get 'about/show'

  get 'about/index'

    get 'items/new'

    get 'items/edit'

  get 'reviews/new'

  get 'reviews/index'

    get 'reservations/new'

    get 'reservations/index'

  get 'menus/index'

  get 'menus/show'


    get 'menus/new'



    get 'menus/index'


    get 'menus/show'



    get 'menus/edit'

    get 'users/show'

    get 'users/index'


  resources :users, :admins, :reservations, :items, :menus, :reviews
end
