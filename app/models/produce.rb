class Produce < ApplicationRecord
	belongs_to :farmer, class_name:'User'
	has_many :purchases
	has_many :Users, through: :purchases
end
