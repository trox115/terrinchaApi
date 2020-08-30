require 'rails_helper'

RSpec.describe "degustacaos/new", type: :view do
  before(:each) do
    assign(:degustacao, Degustacao.new(
      nome: "MyString",
      preco: "MyString"
    ))
  end

  it "renders new degustacao form" do
    render

    assert_select "form[action=?][method=?]", degustacaos_path, "post" do

      assert_select "input[name=?]", "degustacao[nome]"

      assert_select "input[name=?]", "degustacao[preco]"
    end
  end
end
