require 'rails_helper'

RSpec.describe "degustacaos/edit", type: :view do
  before(:each) do
    @degustacao = assign(:degustacao, Degustacao.create!(
      nome: "MyString",
      preco: "MyString"
    ))
  end

  it "renders the edit degustacao form" do
    render

    assert_select "form[action=?][method=?]", degustacao_path(@degustacao), "post" do

      assert_select "input[name=?]", "degustacao[nome]"

      assert_select "input[name=?]", "degustacao[preco]"
    end
  end
end
