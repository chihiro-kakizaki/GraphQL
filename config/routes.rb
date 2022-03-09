Rails.application.routes.draw do
  root "blogs#index"
  resources :blogs
  
  post "/graphql", to: "graphql#execute"
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end
