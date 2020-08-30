require 'rails_helper'

RSpec.describe "menudegustacaos/new", type: :view do
  before(:each) do
    assign(:menudegustacao, Menudegustacao.new(
      nome: "MyString",
      preco: "MyString"
    ))
  end

  it "renders new menudegustacao form" do
    render

    assert_select "form[action=?][method=?]", menudegustacaos_path, "post" do

      assert_select "input[name=?]", "menudegustacao[nome]"

      assert_select "input[name=?]", "menudegustacao[preco]"
    end
  end
end
