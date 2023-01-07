class Pet < ApplicationRecord
  SPECIES = ["cat", "parrot", "racoon", "snake", "dog", "rabbit"]
  validates :contact_name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - self.found_on).to_i
  end
end
