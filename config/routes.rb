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



  namespace :user do
    resources :relationships, only: [:create, :destroy]

    resources :continents,only: [:index, :show, :country]
    get '/continents/:id/country' => 'continents#country', as: 'country'
    #resources :aricles,only: [:show, :edit]
    patch '/release/:id' => 'schedules#release', as: 'release'
    patch'/nonrelease/:id' => 'schedules#nonrelease', as: 'nonrelease'
    get '/schedules/:id/photos' => 'schedules#photos', as: 'schedule_photos'
    get '/schedules/:id/articles' => 'schedules#articles', as: 'schedule_articles'
    resources :schedules,only: [:show, :edit, :update, :destroy, :new, :create, :release, :nonrelease, :photos, :articles]do
      #patch '/release' => 'schedules#release', as: 'release'
      #patch'/nonrelease' => 'schedules#nonrelease', as: 'nonrelease'
      resources :articles,only: [:show, :edit, :new, :update, :destroy, :create]
      resources :comments,only: [:create,:destroy]
      resources :nices,only: [:create, :destroy]
    end
    resources :messages, :only => [:create]
    resources :rooms, :only => [:create, :show, :index]
    resources :notifications, only: [:index]
    get '/check_out_notifications' => 'notifications#check_out', as: 'check_out'
    resources :abouts,only: [:index]
    #resources :favrites,only: [:index,:create, :update, :destroy]
    resources :nices,only: [:index]
    resources :comments,only: [:index]
    resources :end_users,only: [:show, :edit, :update, :destroy,:checks,:finish]
    get '/end_users/:id/checks/' => 'end_users#checks', as: 'checks'
    get '/finish' => 'end_users#finish', as: 'finish'
  end

  namespace :admin do
    resources :categorys, only: [:index, :show, :edit, :update, :destroy, :new, :create]
    resources :countries, only: [:index, :show, :edit, :update, :destroy, :new, :create]
    resources :users,only: [:index, :show, :edit, :update, :destroy]
    resources :schedules,only: [:show, :edit, :update, :destroy]do
    resources :articles,only: [:show, :edit, :update, :destroy]
     resources :comments,only: [:destroy]
  end
    resources :tops,only: [:index]
   end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
