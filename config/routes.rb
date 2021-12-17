Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "live_stream_tweets" => "live_stream_tweets#index"
  get "live_stream_echos" => "live_stream_echos#index"

end
