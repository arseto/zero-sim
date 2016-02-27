class DocStatusesController < ApplicationController
  before_action :set_doc_status, only: [:show, :edit, :update, :destroy]

  # GET /doc_statuses
  # GET /doc_statuses.json
  def index
    @doc_statuses = DocStatus.all
  end

  # GET /doc_statuses/1
  # GET /doc_statuses/1.json
  def show
  end

  # GET /doc_statuses/new
  def new
    @doc_status = DocStatus.new
  end

  # GET /doc_statuses/1/edit
  def edit
  end

  # POST /doc_statuses
  # POST /doc_statuses.json
  def create
    @doc_status = DocStatus.new(doc_status_params)

    respond_to do |format|
      if @doc_status.save
        format.html { redirect_to @doc_status, notice: 'Doc status was successfully created.' }
        format.json { render :show, status: :created, location: @doc_status }
      else
        format.html { render :new }
        format.json { render json: @doc_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_statuses/1
  # PATCH/PUT /doc_statuses/1.json
  def update
    respond_to do |format|
      if @doc_status.update(doc_status_params)
        format.html { redirect_to @doc_status, notice: 'Doc status was successfully updated.' }
        format.json { render :show, status: :ok, location: @doc_status }
      else
        format.html { render :edit }
        format.json { render json: @doc_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_statuses/1
  # DELETE /doc_statuses/1.json
  def destroy
    @doc_status.destroy
    respond_to do |format|
      format.html { redirect_to doc_statuses_url, notice: 'Doc status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_status
      @doc_status = DocStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_status_params
      params.require(:doc_status).permit(:name)
    end
end
