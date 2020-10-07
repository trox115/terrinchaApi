class EntregaemcasasController < ApplicationController
  before_action :set_entregaemcasa, only: [:show, :edit, :update, :destroy]

  # GET /entregaemcasas
  # GET /entregaemcasas.json
  def index
    @entregaemcasas = Entregaemcasa.all
  end

  # GET /entregaemcasas/1
  # GET /entregaemcasas/1.json
  def show
  end

  # GET /entregaemcasas/new
  def new
    @entregaemcasa = Entregaemcasa.new
  end

  # GET /entregaemcasas/1/edit
  def edit
  end

  # POST /entregaemcasas
  # POST /entregaemcasas.json
  def create
    @entregaemcasa = Entregaemcasa.new(entregaemcasa_params)

    respond_to do |format|
      if @entregaemcasa.save
        format.html { redirect_to @entregaemcasa, notice: 'Entregaemcasa was successfully created.' }
        format.json { render :show, status: :created, location: @entregaemcasa }
      else
        format.html { render :new }
        format.json { render json: @entregaemcasa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entregaemcasas/1
  # PATCH/PUT /entregaemcasas/1.json
  def update
    respond_to do |format|
      if @entregaemcasa.update(entregaemcasa_params)
        format.html { redirect_to @entregaemcasa, notice: 'Entregaemcasa was successfully updated.' }
        format.json { render :show, status: :ok, location: @entregaemcasa }
      else
        format.html { render :edit }
        format.json { render json: @entregaemcasa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entregaemcasas/1
  # DELETE /entregaemcasas/1.json
  def destroy
    @entregaemcasa.destroy
    respond_to do |format|
      format.html { redirect_to entregaemcasas_url, notice: 'Entregaemcasa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entregaemcasa
      @entregaemcasa = Entregaemcasa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entregaemcasa_params
      params.require(:entregaemcasa).permit(:nome, :preco, :ingredientes=>[])
    end
end
