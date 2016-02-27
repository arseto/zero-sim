class ReceivingDetailsController < ApplicationController
  before_action :set_receiving_detail, only: [:show, :edit, :update, :destroy]

  # GET /receiving_details
  # GET /receiving_details.json
  def index
    @receiving_details = ReceivingDetail.all
  end

  # GET /receiving_details/1
  # GET /receiving_details/1.json
  def show
  end

  # GET /receiving_details/new
  def new
    @receiving_detail = ReceivingDetail.new
  end

  # GET /receiving_details/1/edit
  def edit
  end

  # POST /receiving_details
  # POST /receiving_details.json
  def create
    @receiving_detail = ReceivingDetail.new(receiving_detail_params)

    respond_to do |format|
      if @receiving_detail.save
        format.html { redirect_to @receiving_detail, notice: 'Receiving detail was successfully created.' }
        format.json { render :show, status: :created, location: @receiving_detail }
      else
        format.html { render :new }
        format.json { render json: @receiving_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receiving_details/1
  # PATCH/PUT /receiving_details/1.json
  def update
    respond_to do |format|
      if @receiving_detail.update(receiving_detail_params)
        format.html { redirect_to @receiving_detail, notice: 'Receiving detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @receiving_detail }
      else
        format.html { render :edit }
        format.json { render json: @receiving_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receiving_details/1
  # DELETE /receiving_details/1.json
  def destroy
    @receiving_detail.destroy
    respond_to do |format|
      format.html { redirect_to receiving_details_url, notice: 'Receiving detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receiving_detail
      @receiving_detail = ReceivingDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receiving_detail_params
      params.require(:receiving_detail).permit(:receiving_id, :sku_id, :qty, :unit_price, :subtotal_price)
    end
end
