class Post < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many_attached :pictures
    has_many :post, dependent: :destroy
    # has_one_attached :imageTwo
end
