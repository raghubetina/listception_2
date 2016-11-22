class Board < ApplicationRecord
  # Direct associations

  has_many   :lists,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :scope => [:user_id] }

  validates :title, :presence => true

  validates :user_id, :presence => true

end
