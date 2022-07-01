class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.decimal :price

      t.timestamps
    end
  end
end
