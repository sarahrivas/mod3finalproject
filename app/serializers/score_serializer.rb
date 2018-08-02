class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :lives
  belongs_to :user

end
