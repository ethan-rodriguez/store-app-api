class Item < ApplicationRecord
    belongs_to :category 
    has_many :line_items 
end
