class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :budget
      t.string :homepage
      t.text :overview
      t.integer :popularity
      t.datetime :release_data
      t.integer :revenue
      t.integer :runtime
      t.string :movie_status
      t.string :tagline
      t.integer :votes_avg
      t.integer :votes_count

      t.timestamps
    end
  end
end
