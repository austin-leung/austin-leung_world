class Article < ApplicationRecord
    has_one :category

    scope :alphabetical, -> { order('title') }
    scope :active,       -> { where(active: true) }

    validates :title, :content 
end
