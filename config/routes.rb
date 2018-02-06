Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :cats, only: [:index, :show]
  end
end
