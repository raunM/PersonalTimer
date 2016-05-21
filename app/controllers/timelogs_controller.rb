class TimelogsController < ApplicationController
    def timelogs
        @time_logs = TimeLog.all
    end
    
    def destroy
        @log = TimeLog.find(params[:id])
        @object.destroy
        respond_to do |format|
            format.html { redirect_to timelogs_url, notice: 'Post was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
end