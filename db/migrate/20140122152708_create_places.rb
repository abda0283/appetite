class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.string :address
      t.float :longitute
      t.float :latitute

      t.timestamps
    end
  end
end
