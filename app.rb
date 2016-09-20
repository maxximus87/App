require 'sinatra'

get '/' do 
	erb :get_name
end

post '/name' do
	name = params[:user_name]
	redirect '/age?user_name=' + name
end

get '/age' do
	name = params[:user_name].capitalize
	erb :get_age, :locals => {:name => name}
end

post '/age' do
	age = params[:user_age]
    name = params[:user_name]
    redirect '/3_fav_numbers?user_name=' + name + '&age=' + age
end

get '/3_fav_numbers' do
 	name = params[:user_name]
 	name
  	age = params[:user_age]
	 erb :get_favorite, :locals => {:name => name, :age => age,}
 end

post '/numbers' do
 	age = params[:age]
	name = params[:name]
	fav1 = params[:user_number_1]
	fav2 = params[:user_number_2]
	fav3 = params[:user_number_3]
	"Your favorite numbers are #{fav1}, #{fav2}, and #{fav3}!"
end

