Rails.application.routes.draw do
  root to: 'questions#index'
  # /questionというURLにアクセスがあったらquestionsコントローラのindexアクションを実行する
  get "/questions", to: "questions#index"
  get "/questions/new", to: "questions#new"
  post "/questions", to: "questions#create"
  get "/questions/:id", to: "questions#show"
end
