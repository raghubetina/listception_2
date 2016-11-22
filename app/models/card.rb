class Card < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :list

  # Indirect associations

  # Validations

  validates :list_id, :presence => true

  validates :title, :presence => true

end
