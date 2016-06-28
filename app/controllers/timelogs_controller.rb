class TimelogsController < ApplicationController
  before_action :set_log, only: [:destroy, :edit, :update]
  before_action :authenticate_user!, except: [:home]
  def home
  end

  def index
    @timelogs = current_user.timelogs.order("created_at DESC")
  end

  def new
    @timelog = current_user.timelogs.build
  end

  def create
    @timelog = current_user.timelogs.build(log_params)

    if @timelog.save
      redirect_to new_user_timelog_path
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @timelog.update(log_params)
      redirect_to user_timelogs_path
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
    @timelog = current_user.timelogs.find(params[:id])
  end

  def log_params
    if params[:action] == "new"
      params.require(:timelog).permit(:description, :timespent, :category)
    else
      params.require(:timelog).permit(:description, :category)
    end
  end

end