class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birth
      t.integer :gender
      t.string :status
      t.string :location
      t.integer :viewed_count, default: 0
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
