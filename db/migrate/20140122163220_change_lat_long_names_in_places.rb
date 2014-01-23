class ChangeLatLongNamesInPlaces < ActiveRecord::Migration
	change_table :places do |t|
  		t.rename :longitute, :longitude
  		t.rename :latitute, :latitude 
  end
end
