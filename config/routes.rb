Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  # devise_for :users, :controllers => {:registrations => 'registrations'}, path_names: {sign_in: "login", sign_out: "logout"}
  resources :users do
      resources :photos do
    end
  end

  root to: 'home#index'

end
