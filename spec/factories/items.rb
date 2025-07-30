# spec/factories/item.rb
FactoryBot.define do
  factory :item do
    content { "Tarefa de exemplo" }
    done { false }
    list
  end
end
