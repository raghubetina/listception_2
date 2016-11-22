class List < ApplicationRecord
  # Direct associations

  belongs_to :board

  # Indirect associations

  # Validations

  validates :board_id, :presence => true

  validates :title, :presence => true

end
