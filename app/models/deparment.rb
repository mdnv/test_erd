class Deparment < ApplicationRecord
  has_many :staffs, dependent: :destroy
end
