class Profession < ApplicationRecord
  has_many :orders, dependent: :destroy
end
