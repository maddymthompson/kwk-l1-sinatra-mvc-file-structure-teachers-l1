#make sure the girls do a practice lab before trying to fux with this 

class ApplicationController < Sinatra::Base

configure do
  set :views, "app/views"
  set :public_dir, "public"
end

get "/" do
  return erb :index
end

post "/" do 
  @the_fortune=get_fortune
  @the_user=params[:user]
  return erb :results
end 

end 
  
  
