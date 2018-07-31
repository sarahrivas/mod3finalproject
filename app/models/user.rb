class User < ApplicationRecord
  belongs_to :languages
  has_many :questions, through: :languages
  has_many :answers, through: :questions
  has_one :score
end
