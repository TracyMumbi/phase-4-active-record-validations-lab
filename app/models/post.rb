class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {in: 250..500}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)} 
    validate :title_clickbait

    def title_clickbait
        if title == "True Facts"
            errors.add(:title, "Invalid title")
        else
        end
    end
end
