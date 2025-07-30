Rails.application.routes.draw do
  resources :lists do
    resources :items, only: %i[create show edit update destroy] do
      patch "toggle_done", on: :member
    end
  end

  root "lists#index"
end
