class Company < ApplicationRecord
  belongs_to :syndication
  has_many :orders, dependent: :destroy
  has_many :users, dependent: :destroy
end
