require 'rails_helper'

RSpec.describe "contactos/show", type: :view do
  before(:each) do
    @contacto = assign(:contacto, Contacto.create!(
      nome: "Nome",
      telefone: "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Telefone/)
  end
end
