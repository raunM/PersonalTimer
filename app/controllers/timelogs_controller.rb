class TimelogsController < ApplicationController
    before_action :set_log, only: [:destroy]
    def index
        @time_logs = TimeLog.all
    end
    
    def new
        @timelog = TimeLog.new
    end
    
    def create
        @timelog = TimeLog.new(log_params)
    
        respond_to do |format|
          if @timelog.save
            format.html { redirect_to @timelog, notice: 'Post was successfully created.' }
            format.json { render :show, status: :created, location: @timelog }
          else
            format.html { render :new }
            format.json { render json: @timelog.errors, status: :unprocessable_entity }
          end
        end
    end
    
    def destroy
        @timelog.destroy
        respond_to do |format|
            format.html { redirect_to timelogs_url, notice: 'Post was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    
    private
        def set_log
            @timelog = TimeLog.find(params[:id])
        end
    
        def log_params
          params.require(:timelog).permit(:description, :timespent)
        end

end