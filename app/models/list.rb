class List < ApplicationRecord
  # Direct associations

  has_many   :cards,
             :dependent => :destroy

  belongs_to :board

  # Indirect associations

  # Validations

  validates :board_id, :presence => true

  validates :title, :presence => true

end
