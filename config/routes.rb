Rails.application.routes.draw do
	resources :community
	resources :diaries
	resources :session_recruitments
	get 'users/mypage'
	get 'users/edit'
	get 'users/show'
	get 'users/friends'
	get 'common/index'
	root to: 'common#index'
	resources :cthulhus
		devise_for :users
		resources :users
		# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
