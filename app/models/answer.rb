class Answer < ApplicationRecord
  belongs_to :question

  validates :content, precence: true
  validates :user_name, precence: true
  
end
