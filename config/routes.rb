Rails.application.routes.draw do
  get 'welcome/index'

  get 'freeagent_oauth', to: 'welcome#freeagent_oauth'
  get 'list', to: 'welcome#list'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
