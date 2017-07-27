class Twit < ActiveRecord::Base
	default_scope -> { order(created_at: :desc) }
	validates :content, presence: true , length: { minimum: 1 , maximum: 140 } 
	belongs_to :user
end
