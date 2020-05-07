class Word < ApplicationRecord
  validates :spelling, presence: true
  validates :category, presence: true

end
