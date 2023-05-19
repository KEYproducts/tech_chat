class Question < ApplicationRecord
  has_many :answers
  
  validates :title, precence: true
  validates :content, precence: true
  validates :user_name, precence: true
end
