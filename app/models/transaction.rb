class Transaction < ApplicationRecord
  belongs_to :user

  validates_presence_of :amount, :paid_at, :name
  validates_numericality_of :amount, greater_than: 0

  validates_associated :user
end
