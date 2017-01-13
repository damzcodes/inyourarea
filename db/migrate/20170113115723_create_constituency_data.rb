class CreateConstituencyData < ActiveRecord::Migration[5.0]
  def change
    create_table :constituency_data do |t|
      t.integer   "statistic"
      t.text      "slug"
      t.integer   "campaign_id"
      t.integer   "constituency_id"
      t.timestamps
    end
  end
end