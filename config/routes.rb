Rails.application.routes.draw do
  GmailAlerts::Application.routes.draw do
    root to: 'sessions#new'
    resources :sessions, only: :index
    get "/auth/:provider/callback" => 'sessions#create'
  end
end
