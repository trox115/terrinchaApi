require 'rails_helper'

RSpec.describe "atividades/edit", type: :view do
  before(:each) do
    @atividade = assign(:atividade, Atividade.create!(
      nome: "MyString"
    ))
  end

  it "renders the edit atividade form" do
    render

    assert_select "form[action=?][method=?]", atividade_path(@atividade), "post" do

      assert_select "input[name=?]", "atividade[nome]"
    end
  end
end
