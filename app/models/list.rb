class List < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :board_id, :presence => true

  validates :title, :presence => true

end
