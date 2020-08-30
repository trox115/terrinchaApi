require 'rails_helper'

RSpec.describe "menudegustacaos/index", type: :view do
  before(:each) do
    assign(:menudegustacaos, [
      Menudegustacao.create!(
        nome: "Nome",
        preco: "Preco"
      ),
      Menudegustacao.create!(
        nome: "Nome",
        preco: "Preco"
      )
    ])
  end

  it "renders a list of menudegustacaos" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Preco".to_s, count: 2
  end
end
