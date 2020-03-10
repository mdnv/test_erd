class Order < ApplicationRecord
  has_many :users, dependent: :destroy
  belongs_to :company
  belongs_to :profession
  belongs_to :syndication
end
