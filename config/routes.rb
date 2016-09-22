Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :tags
  end
end
