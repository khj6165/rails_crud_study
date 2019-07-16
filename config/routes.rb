Rails.application.routes.draw do
	root 'posts#index'
	get 'posts/index'
	get 'posts/new'
	post 'posts/create'
	get 'posts/delete/:id'
	get 'posts/edit/:id'
	post 'posts/update/:id'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
