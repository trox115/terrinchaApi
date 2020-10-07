require 'rails_helper'

RSpec.describe "entregaemcasas/edit", type: :view do
  before(:each) do
    @entregaemcasa = assign(:entregaemcasa, Entregaemcasa.create!(
      nome: "MyString",
      preco: "MyString"
    ))
  end

  it "renders the edit entregaemcasa form" do
    render

    assert_select "form[action=?][method=?]", entregaemcasa_path(@entregaemcasa), "post" do

      assert_select "input[name=?]", "entregaemcasa[nome]"

      assert_select "input[name=?]", "entregaemcasa[preco]"
    end
  end
end
