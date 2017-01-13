class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.text      "text"
      t.integer   "campaign_id"
      t.integer   "constituency_id"

      t.timestamps
    end
  end
end
