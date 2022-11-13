# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  color       :string           not null
#  sex         :string(1)        not null
#  birth_date  :date             not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    CAT_COLORS = %w(black, white, spotted, orange, tortoise)
    validates :name, :color, :sex, :birth_date, presence: true
    validates :color, inclusion: {in: CAT_COLORS}
    validates :sex, inclusion: { in: %w(f F m M)}
    validate :valid_birth_date



    def valid_birth_date
        if birth_date && birth_date < Date.today
            errors.add(:birth_date, "can't be born in the future")
        end
    end

end
