class BorrowRequestsController < ApplicationController
  before_action :authorize_request
  before_action :set_borrow_request, only: %i[show update destroy]

  # GET /borrow_requests
  # GET /borrow_requests.json
  def index
    @borrow_requests = BorrowRequest.where(owner: @current_user.id)
  end

  # GET /borrow_requests/1
  # GET /borrow_requests/1.json
  def show; end

  # POST /borrow_requests
  # POST /borrow_requests.json
  def create
    @borrow_request = BorrowRequest.new(borrow_request_params.merge!(user_id: @current_user.id))

    if @borrow_request.save
      render :show, status: :created, location: @borrow_request
    else
      render json: @borrow_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /borrow_requests/1
  # PATCH/PUT /borrow_requests/1.json
  def update
    if @borrow_request.update(borrow_request_params)
      render :show, status: :ok, location: @borrow_request
    else
      render json: @borrow_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /borrow_requests/1
  # DELETE /borrow_requests/1.json
  def destroy
    @borrow_request.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_borrow_request
    @borrow_request = BorrowRequest.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def borrow_request_params
    params.require(:borrow_request).permit(:book_id)
  end
end
