class ShipmentMethodsController < ApplicationController
  before_action :set_shipment_method, only: [:show, :edit, :update, :destroy]

  # GET /shipment_methods
  # GET /shipment_methods.json
  def index
    @shipment_methods = ShipmentMethod.all
  end

  # GET /shipment_methods/1
  # GET /shipment_methods/1.json
  def show
  end

  # GET /shipment_methods/new
  def new
    @shipment_method = ShipmentMethod.new
  end

  # GET /shipment_methods/1/edit
  def edit
  end

  # POST /shipment_methods
  # POST /shipment_methods.json
  def create
    @shipment_method = ShipmentMethod.new(shipment_method_params)

    respond_to do |format|
      if @shipment_method.save
        format.html { redirect_to @shipment_method, notice: 'Shipment method was successfully created.' }
        format.json { render :show, status: :created, location: @shipment_method }
      else
        format.html { render :new }
        format.json { render json: @shipment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_methods/1
  # PATCH/PUT /shipment_methods/1.json
  def update
    respond_to do |format|
      if @shipment_method.update(shipment_method_params)
        format.html { redirect_to @shipment_method, notice: 'Shipment method was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipment_method }
      else
        format.html { render :edit }
        format.json { render json: @shipment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_methods/1
  # DELETE /shipment_methods/1.json
  def destroy
    @shipment_method.destroy
    respond_to do |format|
      format.html { redirect_to shipment_methods_url, notice: 'Shipment method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_method
      @shipment_method = ShipmentMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipment_method_params
      params.require(:shipment_method).permit(:name)
    end
end
