Jdoc::Application.routes.draw do
  root to: 'document#index'
  get '/service' => 'document#service'
  get '/pdf' => 'document#pdf'

    resources :attachments, :only => [:index, :create, :show]

end