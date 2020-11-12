Rails.application.routes.draw do
  get 'stickies/index'
  root 'stickies#index'

  post 'stickies/index' => 'stickies#create'

  get 'stickies/show' => 'stickies#show'

  get 'stickies/index'
end
