class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates :heroine_id, presence: true
    validates :power_id, presence: true
    validates :strength, inclusion: { in: ["Weak", "Average", "Strong"] }
end
