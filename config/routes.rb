Rails.application.routes.draw do
 	root 'pages#index'
 	namespace :admin do
        get 'static_pages/home'
        
    end
end
