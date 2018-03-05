Rails.application.routes.draw do
  get 'todo_lists/create'

	resources :todos, only: [:index] do
		resources :todo_lists, only: [:create]
	end

	resources :todo_lists, only: [:show,:index]


	root 'todos#index'

	devise_for :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
end
