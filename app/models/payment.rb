class Payment < ApplicationRecord
    belongs_to :user
    
    enum category: {
        food: 0,
        daily: 1,
        transport: 2,
        entertainment: 3,
        education: 4,
        insurance: 5,
        medical: 6,
        communication: 7,
        utilities: 8,
        rent: 9,
        saving: 10,
        other: 11,
        salary: 12,
    }
end
