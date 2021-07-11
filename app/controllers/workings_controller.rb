class WorkingsController < ApplicationController

  def index
    teacher_id = params[:teacher_id]
    @teacher = Teacher.find(teacher_id)
    @workings = Working.all
  end
  
  
end
