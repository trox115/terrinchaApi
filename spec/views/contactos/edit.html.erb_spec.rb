require 'rails_helper'

RSpec.describe "contactos/edit", type: :view do
  before(:each) do
    @contacto = assign(:contacto, Contacto.create!(
      nome: "MyString",
      telefone: "MyString"
    ))
  end

  it "renders the edit contacto form" do
    render

    assert_select "form[action=?][method=?]", contacto_path(@contacto), "post" do

      assert_select "input[name=?]", "contacto[nome]"

      assert_select "input[name=?]", "contacto[telefone]"
    end
  end
end
