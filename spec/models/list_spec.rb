require 'rails_helper'

RSpec.describe List, type: :model do
  it 'é válido com um título' do
    list = List.new(title: 'Minha Lista')
    expect(list).to be_valid
  end

  it 'é inválido sem título' do
    list = List.new(title: nil)
    expect(list).not_to be_valid
  end
end
