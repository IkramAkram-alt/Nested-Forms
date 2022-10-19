class StudentsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy ]
  def index
    @students =Student.all
  end

  def new
    @student = Student.new
  end

  def edit
  end
   
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: 'Student was successfully created' and return
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path, notice: 'Student was successfully Deleted' and return
  end

  private

  def set_student 
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:s_name, :s_dob, :s_address, course_ids: [])
  end

end
