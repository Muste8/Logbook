class Product < ApplicationRecord
    belongs_to :customer
    before_save :calculate_total

    private
  
    def calculate_total
      self.total = price * quantity
    end

    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "customer_id", "id", "id_value", "name", "price", "quantity", "total", "updated_at"]
    end
end
