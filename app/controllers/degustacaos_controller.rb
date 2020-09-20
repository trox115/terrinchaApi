class DegustacaosController < ApplicationController
  before_action :set_degustacao, only: [:show, :edit, :update, :destroy]

  # GET /degustacaos
  # GET /degustacaos.json
  def index
    @degustacaos = Degustacao.all
  end

  # GET /degustacaos/1
  # GET /degustacaos/1.json
  def show
  end

  # GET /degustacaos/new
  def new
    @degustacao = Degustacao.new
  end

  # GET /degustacaos/1/edit
  def edit
  end

  # POST /degustacaos
  # POST /degustacaos.json
  def create
    @degustacao = Degustacao.new(degustacao_params)

    respond_to do |format|
      if @degustacao.save
        format.html { redirect_to @degustacao, notice: 'Degustacao was successfully created.' }
        format.json { render :show, status: :created, location: @degustacao }
      else
        format.html { render :new }
        format.json { render json: @degustacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /degustacaos/1
  # PATCH/PUT /degustacaos/1.json
  def update
    respond_to do |format|
      if @degustacao.update(degustacao_params)
        format.html { redirect_to @degustacao, notice: 'Degustacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @degustacao }
      else
        format.html { render :edit }
        format.json { render json: @degustacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /degustacaos/1
  # DELETE /degustacaos/1.json
  def destroy
    @degustacao.destroy
    respond_to do |format|
      format.html { redirect_to degustacaos_url, notice: 'Degustacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_degustacao
      @degustacao = Degustacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def degustacao_params
      params.require(:degustacao).permit(:nome, :preco)
    end
end
