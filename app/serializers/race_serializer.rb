class RaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :episode_id, :round, :driver_standings_first, :driver_standings_second, :driver_standings_third, :constructor_standings_first, :constructor_standings_second, :constructor_standings_third, :results_first, :results_second, :results_third
end
