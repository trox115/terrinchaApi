require 'rails_helper'

RSpec.describe "degustacaos/index", type: :view do
  before(:each) do
    assign(:degustacaos, [
      Degustacao.create!(
        nome: "Nome",
        preco: "Preco"
      ),
      Degustacao.create!(
        nome: "Nome",
        preco: "Preco"
      )
    ])
  end

  it "renders a list of degustacaos" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Preco".to_s, count: 2
  end
end
