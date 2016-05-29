Rails.application.routes.draw do
  resources :courses do
    resources :offerings do
      collection { edit :enroll }
    end
  end
end