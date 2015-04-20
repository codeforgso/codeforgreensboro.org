CodeforgreensboroOrg::Application.routes.draw do
  get "/pages/*id" => 'pages#show', as: :page, format: false
  root to: 'pages#show', id: 'home'
end
