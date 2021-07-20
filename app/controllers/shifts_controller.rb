class ShiftsController < ApplicationController

  before_action :authenticate_user!

  def index
    teacher_id = params[:teacher_id]
    @teacher = Teacher.find(teacher_id)
    @shifts = Shift.where(teacher_id: teacher_id)
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    if @shift.save
      redirect_to shifts_path(teacher_id: @shift.teacher.id)
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

  def destroy
    @shift = Shift.find(params[:id])
    @shift.destroy
     redirect_to shifts_path(teacher_id: @shift.teacher_id)
  end

  private

  def shift_params
    params.require(:shift).permit(:teacher_id, :start_at)
  end
end
