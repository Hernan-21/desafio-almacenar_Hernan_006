Rails.application.routes.draw do
  resources :movies, only: [:index, :new, :create]
  resources :series, only: [:index, :new, :create]
  resources :documentary_films, only: [:index, :new, :create]

  # Ruta para verificar el estado de salud de la aplicación
  get "up" => "rails/health#show", as: :rails_health_check

  # Puedes definir una ruta raíz si es necesario
  # root "movies#index"
end
