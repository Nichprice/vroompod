class RaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :episode_id, :round, :driver_standings, :constructor_standings, :results
end
