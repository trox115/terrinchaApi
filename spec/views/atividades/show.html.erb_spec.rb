require 'rails_helper'

RSpec.describe "atividades/show", type: :view do
  before(:each) do
    @atividade = assign(:atividade, Atividade.create!(
      nome: "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
