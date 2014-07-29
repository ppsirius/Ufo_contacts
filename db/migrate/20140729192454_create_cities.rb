class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :id_city
      t.string :name

      t.timestamps
    end
  end
end
