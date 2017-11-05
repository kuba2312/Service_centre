class StaticController < ApplicationController
  def index
    @employees = Employee.all
    @requests = Request.all
  end
end
