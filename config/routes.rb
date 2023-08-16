Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: :destroy

  # As a user, I can see all my movie lists
  # As a user, I can create a movie list
  # As a user, I can see the details of a movie list
  # As a user, I can bookmark a movie inside a movie list
  # As a user, I can destroy a bookmark

end
