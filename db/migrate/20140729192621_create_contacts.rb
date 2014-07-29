class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :city
      t.date :date
      t.integer :contact_num

      t.timestamps
    end
  end
end
