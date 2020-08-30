require 'rails_helper'

RSpec.describe "degustacaos/show", type: :view do
  before(:each) do
    @degustacao = assign(:degustacao, Degustacao.create!(
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
