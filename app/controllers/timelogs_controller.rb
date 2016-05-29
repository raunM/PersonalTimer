class TimelogsController < ApplicationController
    before_action :set_log, only: [:destroy]
    #before_action :authenticate_user!, except: [:home]
    def home
    end

    def index
        @timelogs = TimeLog.all
    end
    def show
        
    end

    def new
        @user = User.find(params[:user_id])
        @timelog = @user.time_logs.build
    end
    
    def create
        @user = User.find(params[:user_id])
        @timelog = @user.time_logs.build(log_params)
        
        if @timelog.save
            #flash[:success] = "TIMELOG SAVED"
            redirect_to new_user_timelog_path
        else
            render action: :new
        end
    end
    
    def destroy
        @timelog.destroy
        respond_to do |format|
            format.html { redirect_to user_timelogs_path, notice: 'Timelog was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    
    private
        def set_log
            @timelog = current_user.time_logs.find(params[:id])
        end
    
        def log_params
          params.require(:time_log).permit(:description, :timespent, :category)
        end

end