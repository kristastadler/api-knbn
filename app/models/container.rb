class Container < ApplicationRecord
    has_many :cards, dependent: :destroy
    belongs_to :board
   
end
