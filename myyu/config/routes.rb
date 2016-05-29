Rails.application.routes.draw do
  resources :courses do
    resources :offerings do
      collection { post :enroll }
    end
  end

end