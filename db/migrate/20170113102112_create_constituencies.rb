class CreateConstituencies < ActiveRecord::Migration[5.0]
  def change
    create_table :constituencies do |t|
      t.string   "name"
      t.float    "latitude"
      t.float    "longitude"
      t.string   "area_code"
      t.timestamps
    end
  end
end
