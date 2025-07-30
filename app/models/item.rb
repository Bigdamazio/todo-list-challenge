class Item < ApplicationRecord
  belongs_to :list

  before_validation :strip_content

  validates :content, presence: { message: "não pode ficar em branco" }

  private

  def strip_content
    self.content = content.strip if content.present?
  end
end
