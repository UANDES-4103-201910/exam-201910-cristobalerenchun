class AddShippingsController < ApplicationController
  before_action :set_add_shipping, only: [:show, :edit, :update, :destroy]

  # GET /add_shippings
  # GET /add_shippings.json
  def index
    @add_shippings = AddShipping.all
  end

  # GET /add_shippings/1
  # GET /add_shippings/1.json
  def show
  end

  # GET /add_shippings/new
  def new
    @add_shipping = AddShipping.new
  end

  # GET /add_shippings/1/edit
  def edit
  end

  # POST /add_shippings
  # POST /add_shippings.json
  def create
    @add_shipping = AddShipping.new(add_shipping_params)

    respond_to do |format|
      if @add_shipping.save
        format.html { redirect_to @add_shipping, notice: 'Add shipping was successfully created.' }
        format.json { render :show, status: :created, location: @add_shipping }
      else
        format.html { render :new }
        format.json { render json: @add_shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_shippings/1
  # PATCH/PUT /add_shippings/1.json
  def update
    respond_to do |format|
      if @add_shipping.update(add_shipping_params)
        format.html { redirect_to @add_shipping, notice: 'Add shipping was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_shipping }
      else
        format.html { render :edit }
        format.json { render json: @add_shipping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_shippings/1
  # DELETE /add_shippings/1.json
  def destroy
    @add_shipping.destroy
    respond_to do |format|
      format.html { redirect_to add_shippings_url, notice: 'Add shipping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_shipping
      @add_shipping = AddShipping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_shipping_params
      params.require(:add_shipping).permit(:user_id, :order_id, :phone, :addline1, :addline2, :city, :country, :zipcode)
    end
end
