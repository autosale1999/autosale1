class Postcomment < ApplicationRecord
	belongs_to :user
	belongs_to :photo
	validates :text, length: { in: 1..25}
	validates :text, presence: true
end
