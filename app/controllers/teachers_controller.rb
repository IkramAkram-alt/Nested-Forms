class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[ show edit update destroy ]
  def index
    @teachers =Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end
   
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teachers_path, notice: 'Teacher was successfully created' and return
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_path, notice: 'Teacher was successfully Deleted' and return
  end



  private

  def set_teacher 
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:t_name, :t_age, :t_type, :department_id, :course_id,:student_id)
  end


end
