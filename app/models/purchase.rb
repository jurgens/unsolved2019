class Purchase < ApplicationRecord
  belongs_to :food

  delegate :name, :expiration, to: :food
end
