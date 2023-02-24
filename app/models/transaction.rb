class Transaction < ApplicationRecord
  validates_presence_of :amount, :paid_at, :name
end
