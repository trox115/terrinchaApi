require 'rails_helper'

RSpec.describe "entregaemcasas/index", type: :view do
  before(:each) do
    assign(:entregaemcasas, [
      Entregaemcasa.create!(
        nome: "Nome",
        preco: "Preco"
      ),
      Entregaemcasa.create!(
        nome: "Nome",
        preco: "Preco"
      )
    ])
  end

  it "renders a list of entregaemcasas" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Preco".to_s, count: 2
  end
end
