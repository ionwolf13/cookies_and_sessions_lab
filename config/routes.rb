Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'products#index', as: 'all_products'
  post '/products/new', to: 'products#add', as: 'add_product'
end
