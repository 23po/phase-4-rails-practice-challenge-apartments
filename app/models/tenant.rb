class Tenant < ApplicationRecord
    validates :name, presence: :true
    validate :age_validator

    def age_validator
        unless(age > 17)
            errors.add(:age, "age must be greater than 18")
        end
    end

    has_many :leases
    has_many :apartments, through: :leases 
end
