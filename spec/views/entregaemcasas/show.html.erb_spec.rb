require 'rails_helper'

RSpec.describe "entregaemcasas/show", type: :view do
  before(:each) do
    @entregaemcasa = assign(:entregaemcasa, Entregaemcasa.create!(
      nome: "Nome",
      preco: "Preco"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Preco/)
  end
end
