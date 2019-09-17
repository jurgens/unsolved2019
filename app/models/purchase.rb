class Purchase < ApplicationRecord
  belongs_to :food
  belongs_to :user

  delegate :name, :expiration, to: :food

  def self.generate(user)
    user.purchases.delete_all

    Food.random(7).map do |food|
      user.purchases.create food_id: food.id
    end
  end
end
