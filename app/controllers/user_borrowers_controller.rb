class UserBorrowersController < ApplicationController
  before_action :set_user_borrower, only: [:show, :edit, :update, :destroy]

  # GET /user_borrowers
  # GET /user_borrowers.json
  def index
    @user_borrowers = UserBorrower.all
  end

  # GET /user_borrowers/1
  # GET /user_borrowers/1.json
  def show
  end

  # GET /user_borrowers/new
  def new
    @user_borrower = UserBorrower.new
  end

  # GET /user_borrowers/1/edit
  def edit
  end

  # POST /user_borrowers
  # POST /user_borrowers.json
  def create
    @user_borrower = UserBorrower.new(user_borrower_params)

    respond_to do |format|
      if @user_borrower.save
        format.html { redirect_to @user_borrower, notice: 'User borrower was successfully created.' }
        format.json { render :show, status: :created, location: @user_borrower }
      else
        format.html { render :new }
        format.json { render json: @user_borrower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_borrowers/1
  # PATCH/PUT /user_borrowers/1.json
  def update
    respond_to do |format|
      if @user_borrower.update(user_borrower_params)
        format.html { redirect_to @user_borrower, notice: 'User borrower was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_borrower }
      else
        format.html { render :edit }
        format.json { render json: @user_borrower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_borrowers/1
  # DELETE /user_borrowers/1.json
  def destroy
    @user_borrower.destroy
    respond_to do |format|
      format.html { redirect_to user_borrowers_url, notice: 'User borrower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_borrower
      @user_borrower = UserBorrower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_borrower_params
      params.require(:user_borrower).permit(:name, :registered_date, :status, :identity_type_id, :identity_no)
    end
end
