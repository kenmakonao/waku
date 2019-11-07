Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
   }

  resources :relationships, only: [:create, :destroy]

  namespace :user do
    resources :continents,only: [:index, :show, :edit, :update, :destroy, :new, :create, :country]do
    get '/continents' => 'continents#country', as: 'country'
  end
    resources :aricles,only: [:show, :edit, :update, :destroy, :new, :create]
    resources :schedules,only: [:index, :show, :edit, :update, :destroy, :new, :create]do
     resources :comments,only: [:create,:destroy]
   end

    resources :about,only: [:show]
    resources :favrites,only: [:index,:create, :update, :destroy]
    resources :nices,only: [:index, :create, :update, :destroy]
    resources :comments,only: [:index]
    resources :end_users,only: [:show, :edit, :update, :destroy]
    get '/checks' => 'users#check', as: 'check'
    get '/finish' => 'users#finish', as: 'finish'
  end

  namespace :admin do
    resources :categorys,only: [:index, :show, :edit, :update, :destroy, :new, :create]
    resources :countrys,only: [:index, :show, :edit, :update, :destroy,:new, :create]
    resources :users,only: [:index, :show, :edit, :update, :destroy]
    #resources :comments,only: [:index, :destroy]
    resources :aricles,only: [:index, :show, :edit, :update, :destroy]
    resources :schedules,only: [:index, :show, :edit, :update, :destroy]do
     resources :comments,only: [:destroy]
  end
    resources :tops,only: [:index]
   end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
