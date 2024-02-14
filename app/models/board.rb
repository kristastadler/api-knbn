class Board < ApplicationRecord
    has_many :containers, dependent: :destroy
    
    validates :privacy, inclusion: { in: %w(private public),
    message: "%{value} is not a valid visibility option" }
    validates :title, :presence => true
end
