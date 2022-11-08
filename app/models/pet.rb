class Pet < ApplicationRecord
  # associations (tomorrow)
  SPECIES = ['snake', 'cat', 'dog', 'rabbit', 'horse', 'turtle']
  validates :found_on, presence: true
  validates :address, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
