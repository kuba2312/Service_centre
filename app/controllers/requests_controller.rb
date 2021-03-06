class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy, :follow, :unfollow]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  def follow
    unless (current_employee.follows?(@request) && @request.number_employee < 2)
      current_employee.requests.append(@request)
      @request.more_employees
    end
    redirect_to @request
  end

  def unfollow
    if current_employee.follows?(@request)
      @request.less_employees
      @request.employees.delete(current_employee)
    end
    redirect_to @request
  end
  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @request.how_much
    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        @request.how_much
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:name, :client_first, :client_last, :cost, :costVAT, :description, :number_employee, :status, :client_mail)
    end
end
