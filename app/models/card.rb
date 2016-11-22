class Card < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :list_id, :presence => true

  validates :title, :presence => true

end
