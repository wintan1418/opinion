class Opinion < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  has_one_attached :image, :dependent=> :destroy

end
