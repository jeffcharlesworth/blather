Rails.application.routes.draw do

  resources :posts, :question

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
