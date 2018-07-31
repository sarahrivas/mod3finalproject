class Question < ApplicationRecord
  belongs_to :languages
  has_many :users, through: :languages
  has_many :answers
end
