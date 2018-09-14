class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.string :image_url_1
      t.string :image_url_2
      t.string :image_url_3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
