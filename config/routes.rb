Rails.application.routes.draw do
  root "calculator#index"
  post "calculator/add", to: "calculator#add"
end
