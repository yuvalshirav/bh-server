Rails.application.routes.draw do

  get 'questions', to: 'survey#index'
  post 'surveys', to: 'survey#create'
  get 'stats', to: 'survey#stats'
  post 'users', to: 'user#create'
  put 'users', to: 'user#update'
end
