Rails.application.routes.draw do
  get '/game/try' => 'game#try'
  get '/game/reset'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
