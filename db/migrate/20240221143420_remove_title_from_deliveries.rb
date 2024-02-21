class RemoveTitleFromDeliveries < ActiveRecord::Migration[7.0]
  def change
    remove_column :deliveries, :title
  end
end
