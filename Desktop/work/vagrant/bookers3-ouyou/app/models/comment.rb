class Comment < ApplicationRecord
	belongs_to :book, optional: true
end
