class PalmocoController < ApplicationController
  def create
    palmoco = PAlmoco.create!(pa_params)
  end
  private

  def pa_params
    params.require(:palmoco).permit(:cliente_id, :casa_id, :horas)
  end
end
