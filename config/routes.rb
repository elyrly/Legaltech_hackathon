Jdoc::Application.routes.draw do
  root to: 'document#index'
  get '/service' => 'document#service'
  get '/import' => 'document#pdf'
  get '/json' => 'document#json'

    resources :attachments, :only => [:index, :create, :show]

end