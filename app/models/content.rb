class Content < ApplicationRecord
	has_rich_text :body
	has_one_attached :img
end
