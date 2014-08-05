class NameColumnContacts < ActiveRecord::Migration
  def change
  	rename_column :contacts, :city, :city_id

  end
end
