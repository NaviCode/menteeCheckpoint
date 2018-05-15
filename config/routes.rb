Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Assessments
  get '/assessments/:assessment_type',  to: 'assessment#show'
  get '/assessments/create',            to: 'assessment#new'
  post '/assessments/create',           to: 'assessment#create'
end
