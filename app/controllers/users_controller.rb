get '/users/new' do
  @user = User.new
  erb :"users/new"
end

post '/users' do
  @user = User.new(params[:user])  #{username: "fdasfads", password: "fjdskalfjs"}

  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :"users/new"
  end
end


# post '/channels/:id/subscriptions' do
#   @channel = Channel.find(params[:id])
#   @user.channels << @channel

# end

# delete '/subscriptions/:id'
# end