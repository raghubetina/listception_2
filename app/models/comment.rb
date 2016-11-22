class Comment < ApplicationRecord
  # Direct associations

  belongs_to :card,
             :counter_cache => true

  belongs_to :user

  # Indirect associations

  # Validations

  validates :body, :presence => true

end
