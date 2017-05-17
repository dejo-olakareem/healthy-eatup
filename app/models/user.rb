class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :farm_produce, class_name: "Produce", foreign_key: "farmer_id"
  has_many :purchases
  has_many :produces, through: :purchases
end
