class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :publisher
	has_and_belongs_to_many :markers

	validates :user_id, :publisher_id, presence: true



end
