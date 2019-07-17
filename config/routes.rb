Rails.application.routes.draw do
	root 'posts#index'
	get 'posts/index' => 'posts#index'
	get 'posts/new' => 'posts#new'
	post 'posts/create' => 'posts#create'
	get 'posts/delete/:id' => 'posts#delete'
	get 'posts/edit/:id' => 'posts#edit'
	post 'posts/update/:id' => 'posts#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
