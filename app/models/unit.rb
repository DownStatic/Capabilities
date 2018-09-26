class Unit < ApplicationRecord
  has_many :statentries
  has_many :abilities, through: :statentries
  accepts_nested_attributes_for :abilities
  UNITTYPES = ["Lord", "Legendary Lord", "Hero", "Flying Troop", "Infantry Troop", "Cavalry Troop"]
  SCALES = ["small", "large", "monstrous"]
  validates :name, presence: true
  validates :role, presence: true
  validates :scale, presence: true
  validates :role, inclusion: {in: UNITTYPES}
  validates :scale, inclusion: {in: SCALES}

end
