require 'rails_helper'

RSpec.describe "menudegustacaos/edit", type: :view do
  before(:each) do
    @menudegustacao = assign(:menudegustacao, Menudegustacao.create!(
      nome: "MyString",
      preco: "MyString"
    ))
  end

  it "renders the edit menudegustacao form" do
    render

    assert_select "form[action=?][method=?]", menudegustacao_path(@menudegustacao), "post" do

      assert_select "input[name=?]", "menudegustacao[nome]"

      assert_select "input[name=?]", "menudegustacao[preco]"
    end
  end
end
