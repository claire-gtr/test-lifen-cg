class Shift < ApplicationRecord
  belongs_to :worker
  validates :date, uniqueness: true
end
