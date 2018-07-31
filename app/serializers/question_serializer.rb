class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :languages
  has_many :users, through: :languages
  has_many :answers
end
