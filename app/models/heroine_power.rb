class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates :heroine_id, uniqueness: { scope: :power_id, message: "This heroine already has this power." }
    validates :power_id, uniqueness: { scope: :heroine_id, message: "This heroine already has this power." }
    validates :strength, inclusion: { in: ["Weak", "Average", "Strong"], message: "You must write 'Weak', 'Average', or 'Strong'" }

    def does_not_exist?(heroine_id, power_id)
        HeroinePower.where(heroine_id: heroine_id, power_id: power_id) == 0
    end
end
