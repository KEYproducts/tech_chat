class Answer < ApplicationRecord
  belongs_to :question

  validates :content, presence: true
  validates :user_name, presence: true
  
end
