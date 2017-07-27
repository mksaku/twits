class Twit < ActiveRecord::Base
	validates :content, presence: true , length: { minimum: 1 , maximum: 140 } 
	belongs_to :user
end
