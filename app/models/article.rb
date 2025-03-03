class Article < ApplicationRecord
    has_rich_text :rich_text_content
    validates :title, presence: true, length: { minimum: 5 }
end
