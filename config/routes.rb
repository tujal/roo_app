Rails.application.routes.draw do
  root "approvals#index"
  resources :approvals, only: [:new , :create, :index]
end
