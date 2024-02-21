class RemoveSupposedToArriveFromDeliveries < ActiveRecord::Migration[7.0]
  def change
    remove_column :deliveries, :supposed_to_arrive
  end
end
