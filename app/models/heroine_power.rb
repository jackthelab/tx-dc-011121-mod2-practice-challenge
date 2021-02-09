class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates :heroine_id, uniqueness: { scope: :power_id, message: "already has that power." }
    validates :power_id, presence: true
    validates :strength, inclusion: { in: ["Weak", "Average", "Strong"], message: "must be 'Weak', 'Average', or 'Strong'" }

    def does_not_exist?(heroine_id, power_id)
        HeroinePower.where(heroine_id: heroine_id, power_id: power_id) == 0
    end
end
