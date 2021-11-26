Rails.application.routes.draw do
  namespace :worker do
    get 'top' => 'homes#top'
    resources :requests
    # , only: [:new, :index, :show, :edit]
    # patch 'requests/:id' => 'requests#update', as: 'update_request'
    # post 'requests' => 'requests#create'
    # delete 'requests/:id' => 'requests#destroy', as: 'destroy_request'
  end


  namespace :admin do
    resources :item_stocks
    resources :customers, only: [:index, :edit, :update]
    resources :items
    resources :events
    resources :requests, only: [:index, :show, :update]
    resources :workers
    resources :venues
  end

  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
  end
  devise_for :worker, skip: [:passwords] , controllers: {
    registrations: "worker/registrations",
    sessions: "worker/sessions"
  }

  devise_for :customers, skip: [:passwords] ,controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root 'customers#top'
      resources :venues, only: [:index, :show] do
      resources :venue_comments, only: [:create, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
