class TimelogsController < ApplicationController
    before_action :set_log, only: [:destroy]
    before_action :authenticate_user!, except: [:home]
    def home
    end

    def index
        @timelogs = TimeLog.all
    end
    def show
        
    end
    def new
        @user = User.find(params[:user_id])
        #@timelogs = @user.timelogs.build
    end
    
    # def create
    #     #@timelog = TimeLog.new(log_params)
    #     @timelog = current_user.time_logs.build(log_params)
    #     respond_to do |format|
    #       if @timelog.save
    #         format.html { redirect_to @timelog, notice: 'Post was successfully created.' }
    #         format.json { render :show, status: :created, location: @timelog }
    #       else
    #         format.html { render :new }
    #         format.json { render json: @timelog.errors, status: :unprocessable_entity }
    #       end
    #     end
    # end
    
    def destroy
        @timelog.destroy
        respond_to do |format|
            format.html { redirect_to user_timelog_url, notice: 'Post was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    
    private
        def set_log
            @timelog = current_user.time_logs.find_by_user_id(params[:user_id])
        end
    
        def log_params
          params.require(:timelog).permit(:description, :timespent)
        end

end