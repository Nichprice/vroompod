class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :episode_id, :comment, :rating
  belongs_to :user
end
