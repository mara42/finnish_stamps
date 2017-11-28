class UserSessionsController < ApplicationController
    def new
    end

    def create
        if login(params[:email], params[:password])
            redirect_back_or_to(stamps_path)
        else
            render action: :new
        end
    end
    def destroy
        logout
        redirect_to(:users)
    end
end
