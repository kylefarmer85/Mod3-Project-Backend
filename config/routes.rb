Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # http://localhost:3000/api/v1/users
  namespace :api do 
    namespace :v1 do
      resources :users
      resources :posts 
      resources :comments
    end 
  end
  # namespace :v2 do
    # resources :users
  # end 
  # end

end
