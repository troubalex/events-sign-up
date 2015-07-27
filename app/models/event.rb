class Event < ActiveRecord::Base
	has_many :attendees

	validates 	:title, presence: true
	validates	:description, presence: true

	## TODO: add proper validation for events form ##
end
