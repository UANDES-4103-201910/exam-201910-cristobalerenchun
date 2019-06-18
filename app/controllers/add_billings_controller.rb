class AddBillingsController < ApplicationController
  before_action :set_add_billing, only: [:show, :edit, :update, :destroy]

  # GET /add_billings
  # GET /add_billings.json
  def index
    @add_billings = AddBilling.all
  end

  # GET /add_billings/1
  # GET /add_billings/1.json
  def show
  end

  # GET /add_billings/new
  def new
    @add_billing = AddBilling.new
  end

  # GET /add_billings/1/edit
  def edit
  end

  # POST /add_billings
  # POST /add_billings.json
  def create
    @add_billing = AddBilling.new(add_billing_params)

    respond_to do |format|
      if @add_billing.save
        format.html { redirect_to @add_billing, notice: 'Add billing was successfully created.' }
        format.json { render :show, status: :created, location: @add_billing }
      else
        format.html { render :new }
        format.json { render json: @add_billing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_billings/1
  # PATCH/PUT /add_billings/1.json
  def update
    respond_to do |format|
      if @add_billing.update(add_billing_params)
        format.html { redirect_to @add_billing, notice: 'Add billing was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_billing }
      else
        format.html { render :edit }
        format.json { render json: @add_billing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_billings/1
  # DELETE /add_billings/1.json
  def destroy
    @add_billing.destroy
    respond_to do |format|
      format.html { redirect_to add_billings_url, notice: 'Add billing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_billing
      @add_billing = AddBilling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_billing_params
      params.require(:add_billing).permit(:user_id, :order_id, :phone, :addline1, :addline2, :city, :country, :zipcode)
    end
end
