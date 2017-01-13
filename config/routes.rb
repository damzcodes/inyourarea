Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'constituency#show'
  resources :constituencies
  post 'constituencies/:id' => 'constituencies#lookup_with_postcode'
end
