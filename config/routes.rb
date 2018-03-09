Rails.application.routes.draw do
  root 'health_assessment#pytania'
  get '/ankieta', to: 'health_assessment#pytania'
  post '/ankieta', to: 'health_assessment#create'
  get '/ankieta2', to: 'health_assessment#pytania2'
  post '/ankieta2', to: 'health_assessment#update'
  get '/ankieta3', to: 'health_assessment#pytania3'
  post '/ankieta3', to: 'health_assessment#update'
  get '/ankieta4', to: 'health_assessment#pytania4'
  post '/ankieta4', to: 'health_assessment#wynik'
  get '/wynik', to: 'health_assessment#wynik'

end
