class Animal < ApplicationRecord
  before_action :authenticate_user!
  
  belongs_to :user
  has_one_attached :image
  has_many :animal_comments, dependent: :destroy
  belongs_to :genre
  
  validates :title, presence: true, length:{maximum: 50}
  validates :body, presence: true, length:{maximum: 200}
end
