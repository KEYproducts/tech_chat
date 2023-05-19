class Question < ApplicationRecord
  has_many :answers

  validates :title, presence: true
  validates :content, presence: true
  validates :user_name, presence: true
end
