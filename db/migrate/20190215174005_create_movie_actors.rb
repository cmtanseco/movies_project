class CreateMovieActors < ActiveRecord::Migration[5.2]
  def change
    add_index :movie_actors, [:actor_id, :movie_id], unique: true
    create_table :movie_actors do |t|
      t.references :actor, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
