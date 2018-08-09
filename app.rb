require_relative 'config/environment'
# require_relative './models/Name'
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:


  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye, #{@name}!"

  end


  get "/multiply/:n1 :n2" do
    @number1 = params[:n1].to_i
    @number2 = params[:n2].to_i

     @mul = @number1 * @number2
     "Multiplication: #{@mul} "

  end

end
