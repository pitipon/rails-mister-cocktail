Rails.application.routes.draw do
  resources :ingredients
  resources :cocktails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#
#   Prefix Verb       URI Pattern                     Controller#Action
# ingredients GET         /ingredients(.:format)          ingredients#index
#        POST   /ingredients(.:format)          ingredients#create
# new_ingredient GET    /ingredients/new(.:format)      ingredients#new
# edit_ingredient GET    /ingredients/:id/edit(.:format) ingredients#edit
# ingredient GET    /ingredients/:id(.:format)      ingredients#show
#        PATCH  /ingredients/:id(.:format)      ingredients#update
#        PUT    /ingredients/:id(.:format)      ingredients#update
#        DELETE /ingredients/:id(.:format)      ingredients#destroy
# cocktails GET    /cocktails(.:format)            cocktails#index
#        POST   /cocktails(.:format)            cocktails#create
# new_cocktail GET    /cocktails/new(.:format)        cocktails#new
# edit_cocktail GET    /cocktails/:id/edit(.:format)   cocktails#edit
# cocktail GET    /cocktails/:id(.:format)        cocktails#show
#        PATCH  /cocktails/:id(.:format)        cocktails#update
#        PUT    /cocktails/:id(.:format)        cocktails#update
#        DELETE /cocktails/:id(.:format)        cocktails#destroy


end
