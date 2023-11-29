class Product < ApplicationRecord
    belongs_to :customer
    before_save :calculate_total

    private
  
    def calculate_total
      self.total = price * quantity
    end
end
