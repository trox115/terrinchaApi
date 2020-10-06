require 'rails_helper'

RSpec.describe "atividades/index", type: :view do
  before(:each) do
    assign(:atividades, [
      Atividade.create!(
        nome: "Nome"
      ),
      Atividade.create!(
        nome: "Nome"
      )
    ])
  end

  it "renders a list of atividades" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
  end
end
