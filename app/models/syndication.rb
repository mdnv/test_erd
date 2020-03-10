class Syndication < ApplicationRecord
  has_many :companies, dependent: :destroy
  has_many :orders, dependent: :destroy
end
