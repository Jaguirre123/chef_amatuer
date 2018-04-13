class Recipe < ApplicationRecord
  belongs_to :user
  has_many :steps, dependent: :destroy
  has_many :comments, dependent: :destroy
end
