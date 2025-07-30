# app/models/list.rb
class List < ApplicationRecord
  has_many :items, dependent: :destroy # Uma lista tem muitos itens, e se a lista for excluída, os itens também serão.
  validates :title, presence: true # O título da lista não pode ser vazio.
end
