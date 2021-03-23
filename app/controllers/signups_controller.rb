class SignupsController < ApplicationController

    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.new(signup_params)
        
        if @signup.valid?
            @signup.save
            redirect_to camper_path(@signup.camper)
          else 
            flash.now[:messages] = @signup.errors.full_messages[0]
            render :new
          end
    end

    private

    def signup_params
        params.require(:signup).permit(:camper_id, :activity_id, :time)
    end
end
