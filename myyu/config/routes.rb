Rails.application.routes.draw do
  post 'courses/search_myyu'
  resources :courses do
    resources :offerings do
    end
  end
end