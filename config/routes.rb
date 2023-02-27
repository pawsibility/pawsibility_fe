Rails.application.routes.draw do
  get "/", to: "quiz#quiz"
  post "/quiz_results", to: "quiz#results"
end
