require 'rails_helper'

RSpec.describe "contactos/new", type: :view do
  before(:each) do
    assign(:contacto, Contacto.new(
      nome: "MyString",
      telefone: "MyString"
    ))
  end

  it "renders new contacto form" do
    render

    assert_select "form[action=?][method=?]", contactos_path, "post" do

      assert_select "input[name=?]", "contacto[nome]"

      assert_select "input[name=?]", "contacto[telefone]"
    end
  end
end
