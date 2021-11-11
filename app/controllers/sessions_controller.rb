class SessionsController < ApplicationController
    def new
        #blank for now, we are only rendering the login view located at views/session/new.html.erb
    end

    #by setting the sessions[:username] equal to params[:username] we are logging in the current user. 
    #redirecting to login in params not met or redirecting to root page if logged in
    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    #will log out the user by deleting cookies from sessions hash
    def destroy
        session.delete :name
    end
end