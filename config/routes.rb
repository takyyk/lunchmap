Rails.application.routes.draw do
  root to: 'pages#home'

  get 'sign_in', to: 'sessions#new', as: :sign_in
  resources 'shops', only: %i[index]
  resources 'reports', only: %i[index new show]
end
