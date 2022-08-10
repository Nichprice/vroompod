class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.string :name
      t.string :date
      t.integer :episode_id
      t.integer :round
      t.string :driver_standings_first
      t.string :driver_standings_second
      t.string :driver_standings_third
      t.string :constructor_standings_first
      t.string :constructor_standings_second
      t.string :constructor_standings_third
      t.string :results_first
      t.string :results_second
      t.string :results_third

      t.timestamps
    end
  end
end
