class SignUpsController < ApplicationController

    def new
        @sign_up = SignUp.new
    end

    def create
        @sign_up = SignUp.create(sign_up_params)
        if @sign_up.valid?
            redirect_to camper_path(@sign_up.camper)
        else
            flash[:my_errors] = @sign_up.errors.full_messages
            redirect_to new_sign_up_path
        end
    end

    private

    def sign_up_params
        params.require(:sign_up).permit(:camper_id, :activity_id, :time)
    end

end
