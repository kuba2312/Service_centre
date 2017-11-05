class SessionsController < ApplicationController
  def new
  end

  def create
      employee = Employee.find_by(nickname: params[:session][:nickname])
      if employee && employee.authenticate(params[:session][:password])
        # Wszystko dobrze, logujemy
        log_in employee
        redirect_to employee
      else
        # Niedobrze
        render 'new'
      end
    end
end
