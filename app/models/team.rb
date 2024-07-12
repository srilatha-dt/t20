class Team < ApplicationRecord
  has_many :players, dependent: :destroy
  has_and_belongs_to_many :matches
end
