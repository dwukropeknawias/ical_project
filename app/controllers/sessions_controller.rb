class SessionsController < ApplicationController

  def new
  end

  def create

    student = Student.find_by(index: params[:session][:index])

   if student && student.authenticate(params[:session][:password])
     log_in student

     redirect_back_or student

   else

     flash.now[:danger] = 'Invalid index/password combination'
     render 'new'

   end

  end

  def destroy

    log_out
    redirect_to root_url

  end




end
