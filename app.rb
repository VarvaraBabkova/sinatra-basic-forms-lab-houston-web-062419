require_relative 'config/environment'

class App < Sinatra::Base

	get "/" do
		erb :index
	end

	get "/new" do
		erb :create_puppy
	end

	post "/puppy" do
		p = Puppy.new(params[:name], params[:breed], params[:age])
		@age = p.months_old
		@name = p.name
		@breed = p.breed
		erb :display_puppy
	end
end
