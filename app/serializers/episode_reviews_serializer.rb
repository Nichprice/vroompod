class EpisodeReviewsSerializer < ActiveModel::Serializer
  attributes :id, :insta_pic, :applepods, :spotify, :blurb
  has_many :reviews 
end
