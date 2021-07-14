class ShiftsController < ApplicationController

  before_action :authenticate_user!

  def index
    teacher_id = params[:teacher_id]
    @teacher = Teacher.find(teacher_id)
    @shifts = Shift.all
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    if @shift.save
      redirect_to shifts_path(teacher_id: @shift.teacher_id)
    else
      render :index
    end
  end

  def edit
    @shift = Shift.find(params[:id])
    teacher_id = params[:teacher_id]
    @teacher = Teacher.find(teacher_id)
  end

  def update
    @shift = Shift.find(params[:id])
    if @shift.update(shift_params)
      redirect_to  shifts_path(teacher_id: @shift.teacher_id)
    else
      render :edit
    end
  end

  private

  def shift_params
    params.require(:shift).permit(:teacher_id, :start_at, :end_at)
  end
end
