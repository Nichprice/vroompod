class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :episode_id, :comment, :rating
end
