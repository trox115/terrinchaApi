require 'rails_helper'

RSpec.describe "contactos/index", type: :view do
  before(:each) do
    assign(:contactos, [
      Contacto.create!(
        nome: "Nome",
        telefone: "Telefone"
      ),
      Contacto.create!(
        nome: "Nome",
        telefone: "Telefone"
      )
    ])
  end

  it "renders a list of contactos" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Telefone".to_s, count: 2
  end
end
