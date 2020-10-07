require 'rails_helper'

RSpec.describe "entregaemcasas/new", type: :view do
  before(:each) do
    assign(:entregaemcasa, Entregaemcasa.new(
      nome: "MyString",
      preco: "MyString"
    ))
  end

  it "renders new entregaemcasa form" do
    render

    assert_select "form[action=?][method=?]", entregaemcasas_path, "post" do

      assert_select "input[name=?]", "entregaemcasa[nome]"

      assert_select "input[name=?]", "entregaemcasa[preco]"
    end
  end
end
