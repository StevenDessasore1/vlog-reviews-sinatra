class UsersController < ApplicationController

  # GET: /users/new

  get "/create_account" do
    erb :"/users/new.html"
  end

  get "/sign_in" do
    erb :"/users/sign_in.html"
  end

  post "/sign_out" do
    #session.destroy
   redirect '/'
  end

  # GET: /users
  # get "/users" do
  #  erb :"/users/index.html"
  # end


  # POST: /users
  #post "/users" do
  #  redirect "/users"
  #end

  # GET: /users/5
  #get "/users/:id" do
   # erb :"/users/show.html"
  #end

  # GET: /users/5/edit
 # get "/users/:id/edit" do
  #  erb :"/users/edit.html"
 # end

  # PATCH: /users/5
 # patch "/users/:id" do
  #  redirect "/users/:id"
 # end

  # DELETE: /users/5/delete
 # delete "/users/:id/delete" do
  #  redirect "/users"
 # end
end
