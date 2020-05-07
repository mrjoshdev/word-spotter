class Search < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-z]+\z/ }

  belongs_to :user
end
