class Card < ApplicationRecord
  # Direct associations

  belongs_to :list

  # Indirect associations

  # Validations

  validates :list_id, :presence => true

  validates :title, :presence => true

end
