class MenudegustacaosController < ApplicationController
  before_action :set_menudegustacao, only: [:show, :edit, :update, :destroy]

  # GET /menudegustacaos
  # GET /menudegustacaos.json
  def index
    @menudegustacaos = Menudegustacao.all
  end

  # GET /menudegustacaos/1
  # GET /menudegustacaos/1.json
  def show
  end

  # GET /menudegustacaos/new
  def new
    @menudegustacao = Menudegustacao.new
  end

  # GET /menudegustacaos/1/edit
  def edit
  end

  # POST /menudegustacaos
  # POST /menudegustacaos.json
  def create
    @menudegustacao = Menudegustacao.new(menudegustacao_params)

    respond_to do |format|
      if @menudegustacao.save
        format.html { redirect_to @menudegustacao, notice: 'Menudegustacao was successfully created.' }
        format.json { render :show, status: :created, location: @menudegustacao }
      else
        format.html { render :new }
        format.json { render json: @menudegustacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menudegustacaos/1
  # PATCH/PUT /menudegustacaos/1.json
  def update
    respond_to do |format|
      if @menudegustacao.update(menudegustacao_params)
        format.html { redirect_to @menudegustacao, notice: 'Menudegustacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @menudegustacao }
      else
        format.html { render :edit }
        format.json { render json: @menudegustacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menudegustacaos/1
  # DELETE /menudegustacaos/1.json
  def destroy
    @menudegustacao.destroy
    respond_to do |format|
      format.html { redirect_to menudegustacaos_url, notice: 'Menudegustacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menudegustacao
      @menudegustacao = Menudegustacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def menudegustacao_params
      params.require(:menudegustacao).permit(:nome, :preco, :itens=>[])
    end
end
