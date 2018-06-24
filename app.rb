require 'sinatra'

get '/'do
    erb :index
end

get '/hello' do
    @me = params[:me]
    @you = params[:you]
    
    File.open("lovers.txt", "a+") do |f|
        f.write("#{@me}랑 #{@you}는 얼레리꼴레리\n")
    end
    erb :hello
end

get '/admin'do
    @file = File.open("lovers.txt", "r")
    erb :admin
end

