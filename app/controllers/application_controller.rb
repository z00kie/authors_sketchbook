class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, "public"
    set :views, "app/views"
    enable :sessions
    set :sessions_secret, "sketch_book"
  end

  get "/" do
    "You can do this one step at a time."
  end
end
