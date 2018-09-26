class Ability < ApplicationRecord
  has_many :statentries
  has_many :units, through: :statentries
  accepts_nested_attributes_for :units

  validates :name, presence: true
  validates :effect, presence: true
  validates :name, uniqueness: true

end
