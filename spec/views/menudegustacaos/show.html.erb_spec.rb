require 'rails_helper'

RSpec.describe "menudegustacaos/show", type: :view do
  before(:each) do
    @menudegustacao = assign(:menudegustacao, Menudegustacao.create!(
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
