class StudentsController < ApplicationController
  
  def index
    @students = Student.order(:name).page(params[:page])
  end
  
  def show
    @student = Student.find(params[:id])
  end
end
