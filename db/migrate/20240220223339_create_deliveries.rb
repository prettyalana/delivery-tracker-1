class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :title
      t.text :description
      t.date :supposed_to_arrive
      t.text :details

      t.timestamps
    end
  end
end
