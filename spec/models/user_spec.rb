require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validation tests' do 
    it 'ensures email presence' do
      user = User.new(name:'Antonio').save
      expect(user).to eq(false)
    end

    it 'ensures name presence' do
      user = User.new(email:'Antonio').save
      expect(user).to eq(false)
    end

    it 'should not save successfuly' do
      user = User.new(name:'Antonio', email:'tofernandes67@gmail.com', password:'1234',password_confirmation:'1234').save
      expect(user).to eq(false)
    end
    it 'should save successfuly' do
      user = User.new(name:'Antonio', email:'tofernandes67@gmail.com', password:'123456789',password_confirmation:'123456789').save
      expect(user).to eq(true)
    end
  end
end
