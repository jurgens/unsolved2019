require 'roar/json'

class PurchaseRepresenter < Roar::Decorator
  include Roar::JSON

  property :name
  property :expiration
  property :created_at
end
