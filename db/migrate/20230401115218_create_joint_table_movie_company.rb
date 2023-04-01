class CreateJointTableMovieCompany < ActiveRecord::Migration[7.0]
  def change
    create_table :joint_table_movie__companies do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :production_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
