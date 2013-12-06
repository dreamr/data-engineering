MigrationApp::Application.routes.draw do
  get "imports/new"
  post "imports/create"

  root :to => "imports#new"
end
