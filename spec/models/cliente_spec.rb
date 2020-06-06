require 'rails_helper'

RSpec.describe Cliente, type: :model do
  context 'Validation tests' do
    it 'ensures name presence' do
      cliente = Cliente.new(email: 'António').save
      expect(cliente).to eq(false)
    end

    it 'ensures email presence' do
      cliente = Cliente.new(name: 'António').save
      expect(cliente).to eq(false)
    end

    it 'ensures phone presence' do
      cliente = Cliente.new(name: 'António').save
      expect(cliente).to eq(false)
    end

    it 'ensures cliente can not be saved' do
      cliente = Cliente.new(name: 'António', phone: '1234', email: 'algo@alog.com').save
      expect(cliente).to eq(false)
    end

    it 'ensures cliente can not be saved' do
      cliente = Cliente.new(name: 'António', phone: '123456789', email: 'algo@alog.com').save
      expect(cliente).to eq(true)
    end
  end
end
