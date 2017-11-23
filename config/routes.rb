Rails.application.routes.draw do

  root to: "cocktails#index"
  resources :ingredients
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  post 'doses/:id', to: "doses#destroy", as: 'doses_destroy'

#   Prefix Verb   URI Pattern                                 Controller#Action
#     root GET    /                                           cocktails#index
# ingredients GET    /ingredients(.:format)                      ingredients#index
#          POST   /ingredients(.:format)                      ingredients#create
# new_ingredient GET    /ingredients/new(.:format)                  ingredients#new
# edit_ingredient GET    /ingredients/:id/edit(.:format)             ingredients#edit
# ingredient GET    /ingredients/:id(.:format)                  ingredients#show
#          PATCH  /ingredients/:id(.:format)                  ingredients#update
#          PUT    /ingredients/:id(.:format)                  ingredients#update
#          DELETE /ingredients/:id(.:format)                  ingredients#destroy
# cocktail_doses POST   /cocktails/:cocktail_id/doses(.:format)     doses#create
# new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new(.:format) doses#new
# cocktail_dose DELETE /cocktails/:cocktail_id/doses/:id(.:format) doses#destroy
# cocktails GET    /cocktails(.:format)                        cocktails#index
#          POST   /cocktails(.:format)                        cocktails#create
# new_cocktail GET    /cocktails/new(.:format)                    cocktails#new
# edit_cocktail GET    /cocktails/:id/edit(.:format)               cocktails#edit
# cocktail GET    /cocktails/:id(.:format)                    cocktails#show
#          PATCH  /cocktails/:id(.:format)                    cocktails#update
#          PUT    /cocktails/:id(.:format)                    cocktails#update
#          DELETE /cocktails/:id(.:format)                    cocktails#destroy


end
