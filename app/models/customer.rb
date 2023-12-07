class Customer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "email", "first_name", "id", "id_value", "last_name", "phone", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["products", "user"]
  end
end
