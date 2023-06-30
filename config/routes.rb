Rails.application.routes.draw do

  get "/questions", to: "question#index"
end
