class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

         validates :first_name, :last_name, :username, presence: true

  has_many :customers
  belongs_to :role
  validates :role, presence: true
end
