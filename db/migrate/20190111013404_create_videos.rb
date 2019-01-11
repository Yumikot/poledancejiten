class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :video_title
      t.text :video_url
      t.references :trick, foreign_key: true

      t.timestamps
    end
  end
end
