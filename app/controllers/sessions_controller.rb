class SessionsController < ApplicationController


    # POST /login
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: { user: user }, status: :ok
        else
            render json: { errors: ['Invalid username and password combination'] }, status: :unauthorized
        end
    end

end
