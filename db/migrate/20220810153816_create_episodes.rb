class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.string :insta_pic
      t.string :applepods
      t.string :spotify
      t.string :blurb

      t.timestamps
    end
  end
end
