require_relative 'config/environment'

class App < Sinatra::Base

  all_the_medicines = [
  "penicillin", "advil" , "benadryl"
]

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
  get "/multiply/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @product = @num1 * @num2
    "#{@product}"
  end

  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

end
