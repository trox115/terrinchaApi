require 'rails_helper'

RSpec.describe "atividades/new", type: :view do
  before(:each) do
    assign(:atividade, Atividade.new(
      nome: "MyString"
    ))
  end

  it "renders new atividade form" do
    render

    assert_select "form[action=?][method=?]", atividades_path, "post" do

      assert_select "input[name=?]", "atividade[nome]"
    end
  end
end
