class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  # belongs_to :language
  # has_many :questions, through: :languages
  # has_many :answers, through: :questions
  has_one :score
 
end
