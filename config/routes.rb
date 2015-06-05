CodeforgreensboroOrg::Application.routes.draw do
  root to: 'pages#show', id: 'home'

  get 'wall', to: "wall#index"

  # Wildcard for mixed views
  match '/*id' => 'high_voltage/pages#show', :as => :static, :via => :get
end
