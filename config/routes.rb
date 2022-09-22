Rails.application.routes.draw do
 get '/top' => 'homes#top'
 post 'books' => 'books#create'
 get 'books/new'
 get '/books' => 'books#index'
 get 'books/100452' => 'books#show'
 get 'books/100452/edit' => 'books#edit'
end
