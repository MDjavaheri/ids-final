Rails.application.routes.draw do
  resources :courses do
    resources :offerings do
    end
  end
end