class Article < ApplicationRecord
  has_many  :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

  validates :text, length: { maximum: 1000,
                    too_long: "%{count} characters is the maximum allowed" }
end
