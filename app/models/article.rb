class Article < ApplicationRecord
    has_one_attached :featured_image
    has_rich_text :rich_text_content
    validates :title, presence: true, length: { minimum: 5 }
end
