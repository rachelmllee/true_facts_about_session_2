class Person < ActiveRecord::Base
	has_many :facts
	validates :name, presence: true, 
		uniqueness: { case_sensitive: false }
end
