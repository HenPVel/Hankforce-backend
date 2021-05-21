Rails.application.routes.draw do
  get "/salespersons/:id/opportunities", to: "opportunities#salesperson_opportunities"


  resources :activities
  resources :notes
  resources :opportunities
  resources :contacts
  resources :organizations
  resources :salesperson_organizations
  resources :salespeople
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
