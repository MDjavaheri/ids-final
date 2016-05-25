Rails.application.routes.draw do
  resources :courses do
    resources :offerings
  end

end