require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'é válido com conteúdo e list' do
    list = List.create!(title: 'Teste')
    item = Item.new(content: 'Comprar leite', list: list)
    expect(item).to be_valid
  end

  it 'é inválido sem conteúdo' do
    item = Item.new(content: nil)
    expect(item).not_to be_valid
  end
end
