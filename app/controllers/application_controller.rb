
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/' do
  { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    @users = User.all.to_json
  end

  get '/tasks' do
    @tasks = Task.all.to_json
  end

  get '/user/:id' do
    @user = User.find(params[:id])
    @user.to_json(include: :tasks)
  end

  get '/task/:id' do
    @task = Task.find(params[:id])
    @task.to_json(include: :users)
  end
  
 
  #create a new user
  post "/users" do 
    new_user = User.create(name: params[:name], email: params[:email])
    new_user.to_json
  end

  #create a new task
  #post '/users/:user_id/tasks' do 
    #user = User.find_by(id: params[:book_id])
    #new_task = user.tasks.create(name: params[:name], text: params[:text] )
    #new_task.to_json(include: :user)
   
 # end

  #update task status
  #patch '/tasks/:id' do 
    #task = Task.find_by(id: params[:id])
    #task.update(status: params[:status])
    #task.to_json(include: :users)
 # end

  #delete book review
 # delete '/tasks/:id' do 
  #  task = Task.find_by(id: params[:id])
   # task.destroy
    #task.to_json
 # end

end