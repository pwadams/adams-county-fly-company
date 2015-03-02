Rails.application.routes.draw do
  root "static_pages#index"

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"
  get "sign-out", to: "authentication#destroy"
  get "sign-in", to: "authentication#new"
  post "sign-in", to: "authentication#create"
end
