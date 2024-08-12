class Bubblecup < ApplicationRecord
    validates :year, 
        presence: true,
        inclusion: { in: 1900..Date.today.year },
        format: { 
            with: /(19|20)\d{2}/i, 
            message: "should be a four-digit year"
        }
    validates :name, presence: true
end
