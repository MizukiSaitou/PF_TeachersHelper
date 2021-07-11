class WorkingsController < ApplicationController

  def index
    teacher_id = params[:teacher_id]
    @teacher = Teacher.find(teacher_id)
    @workings = Working.all
    @working = Working.new
  end

  def create
    @working = Working.new(working_params)
    if @working.save
      redirect_to workings_path(teacher_id: @working.teacher_id)
    else
      render :index
    end
  end

  private

  def working_params
    params.require(:working).permit(:teacher_id, :start_at, :end_at)
  end


end
