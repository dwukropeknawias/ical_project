class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create

      @student = Student.new(student_params)

      if @student.save
        log_in @student
        flash[:success] = "Registration was successfull. Good job."
        redirect_to @student
      else
        render 'new'
      end

  end

  private

      def student_params
        params.require(:student).permit(:index, :first_name, :last_name, :field_of_study, :password, :password_confirmation)
      end


end
