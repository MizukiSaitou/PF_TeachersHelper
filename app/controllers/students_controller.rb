class StudentsController < ApplicationController
  
  def index
    @students = Student.order(:name).page(params[:page])
  end
  

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end


  private

  def student_params
    params.require(:student).permit(:name, :name_kana, :grade, :school, :phone_number, :gender)
  end
  
  def 

end
